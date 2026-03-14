#!/usr/bin/env python3

from __future__ import annotations

import argparse
import csv
import hashlib
import json
import re
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, List, Sequence, Tuple

HEADER_RE = re.compile(r"^(#{2,6}) (.+)$")
FRONTMATTER_RE = re.compile(r"^\ufeff?---\s*\n.*?\n(?:---|\.\.\.)\s*(?:\n|$)", re.DOTALL)
STATE_FILE = "state.json"
MANIFEST_FILE = "manifest.tsv"


@dataclass(frozen=True)
class Heading:
    level: int
    line_no: int
    start_offset: int
    end_offset: int
    end_line: int
    title_raw: str
    path: Tuple[int, ...]
    parent_path: Tuple[int, ...]


@dataclass(frozen=True)
class Chunk:
    order: int
    chunk_id: str
    kind: str
    origin_level: int
    start_line: int
    end_line: int
    path: Tuple[int, ...]
    heading_path: Tuple[str, ...]
    text: str


def sha256_text(text: str) -> str:
    return hashlib.sha256(text.encode("utf-8")).hexdigest()


def sanitize_cell(text: str) -> str:
    return text.replace("\t", " ").replace("\r", " ").replace("\n", " ").strip()


def split_edge_whitespace(text: str) -> Tuple[str, str, str]:
    start = 0
    end = len(text)
    while start < end and text[start].isspace():
        start += 1
    while end > start and text[end - 1].isspace():
        end -= 1
    return text[:start], text[start:end], text[end:]


def normalize_edge_whitespace(source_text: str, target_text: str) -> str:
    source_leading, _, source_trailing = split_edge_whitespace(source_text)
    _, target_core, _ = split_edge_whitespace(target_text)
    return f"{source_leading}{target_core}{source_trailing}"


def describe_whitespace(text: str) -> str:
    escaped = text.encode("unicode_escape").decode("ascii")
    if len(escaped) > 40:
        escaped = f"{escaped[:37]}..."
    return f"{len(text)}:{escaped!r}"


def format_chunk_id(path: Sequence[int]) -> str:
    return "-".join(f"{part:02d}" for part in path)


def detect_frontmatter_end(text: str) -> int:
    match = FRONTMATTER_RE.match(text)
    return match.end() if match else 0


def parse_headings(text: str) -> List[Heading]:
    lines = text.splitlines(keepends=True)
    offsets: List[int] = []
    offset = 0
    for line in lines:
        offsets.append(offset)
        offset += len(line)

    frontmatter_end = detect_frontmatter_end(text)
    scan_start = 0
    while scan_start < len(lines) and offsets[scan_start] < frontmatter_end:
        scan_start += 1

    raw_headers: List[Dict[str, object]] = []
    in_fence = False
    fence_char = ""
    fence_len = 0

    for idx in range(scan_start, len(lines)):
        raw_line = lines[idx]
        line = raw_line.rstrip("\r\n")
        stripped = line.lstrip()

        if in_fence:
            if stripped.startswith(fence_char * fence_len) and stripped[fence_len:].strip() == "":
                in_fence = False
                fence_char = ""
                fence_len = 0
            continue

        if stripped.startswith("```") or stripped.startswith("~~~"):
            fence_char = stripped[0]
            count = 0
            while count < len(stripped) and stripped[count] == fence_char:
                count += 1
            if count >= 3:
                in_fence = True
                fence_len = count
                continue

        match = HEADER_RE.match(line)
        if not match:
            continue

        level = len(match.group(1))
        raw_headers.append(
            {
                "level": level,
                "line_no": idx + 1,
                "start_offset": offsets[idx],
                "title_raw": match.group(2),
            }
        )

    if not raw_headers:
        return []

    counters: Dict[Tuple[int, ...], int] = {}
    stack: List[Dict[str, object]] = []
    headings: List[Heading] = []

    for i, item in enumerate(raw_headers):
        level = int(item["level"])
        while stack and int(stack[-1]["level"]) >= level:
            stack.pop()

        parent_path = tuple(stack[-1]["path"]) if stack else ()
        next_index = counters.get(parent_path, 0) + 1
        counters[parent_path] = next_index
        path = parent_path + (next_index,)

        start_offset = int(item["start_offset"])
        end_offset = len(text)
        end_line = len(lines)
        for later in raw_headers[i + 1 :]:
            if int(later["level"]) <= level:
                end_offset = int(later["start_offset"])
                end_line = int(later["line_no"]) - 1
                break

        heading = Heading(
            level=level,
            line_no=int(item["line_no"]),
            start_offset=start_offset,
            end_offset=end_offset,
            end_line=end_line,
            title_raw=str(item["title_raw"]),
            path=path,
            parent_path=parent_path,
        )
        headings.append(heading)
        stack.append({"level": level, "path": path})

    return headings


def build_chunks(
    text: str,
    headings: Sequence[Heading],
    *,
    base_level: int,
    max_level: int,
    max_lines: int,
) -> List[Chunk]:
    lines = text.splitlines(keepends=True)
    heading_by_path = {heading.path: heading for heading in headings}
    children_by_path: Dict[Tuple[int, ...], List[Heading]] = {}
    for heading in headings:
        children_by_path.setdefault(heading.parent_path, []).append(heading)

    for children in children_by_path.values():
        children.sort(key=lambda item: item.start_offset)

    chunks: List[Chunk] = []

    def add_chunk(
        path: Tuple[int, ...],
        kind: str,
        origin_level: int,
        start_offset: int,
        end_offset: int,
        start_line: int,
        end_line: int,
        heading_path: Tuple[str, ...],
    ) -> None:
        if end_offset <= start_offset:
            return
        chunks.append(
            Chunk(
                order=len(chunks) + 1,
                chunk_id=format_chunk_id(path),
                kind=kind,
                origin_level=origin_level,
                start_line=start_line,
                end_line=end_line,
                path=path,
                heading_path=heading_path,
                text=text[start_offset:end_offset],
            )
        )

    def title_path_for(path: Tuple[int, ...]) -> Tuple[str, ...]:
        titles: List[str] = []
        for length in range(1, len(path) + 1):
            heading = heading_by_path.get(path[:length])
            if heading is not None:
                titles.append(heading.title_raw)
        return tuple(titles)

    def emit_heading(heading: Heading) -> None:
        descendants = children_by_path.get(heading.path, [])
        line_count = heading.end_line - heading.line_no + 1
        heading_titles = title_path_for(heading.path)

        if descendants and heading.level < max_level and line_count > max_lines:
            first_child = descendants[0]
            add_chunk(
                path=heading.path + (0,),
                kind="preamble",
                origin_level=heading.level,
                start_offset=heading.start_offset,
                end_offset=first_child.start_offset,
                start_line=heading.line_no,
                end_line=first_child.line_no - 1,
                heading_path=heading_titles,
            )
            for child in descendants:
                emit_heading(child)
            return

        add_chunk(
            path=heading.path,
            kind="section",
            origin_level=heading.level,
            start_offset=heading.start_offset,
            end_offset=heading.end_offset,
            start_line=heading.line_no,
            end_line=heading.end_line,
            heading_path=heading_titles,
        )

    top_level = [heading for heading in headings if heading.level == base_level]
    top_level.sort(key=lambda item: item.start_offset)

    if not top_level:
        add_chunk(
            path=(0,),
            kind="document",
            origin_level=0,
            start_offset=0,
            end_offset=len(text),
            start_line=1,
            end_line=len(lines),
            heading_path=(),
        )
        return chunks

    first_heading = top_level[0]
    add_chunk(
        path=(0,),
        kind="document",
        origin_level=0,
        start_offset=0,
        end_offset=first_heading.start_offset,
        start_line=1,
        end_line=first_heading.line_no - 1,
        heading_path=(),
    )

    for heading in top_level:
        emit_heading(heading)

    return chunks


def write_manifest(root: Path, rows: Iterable[Dict[str, str]]) -> None:
    path = root / MANIFEST_FILE
    with path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(
            handle,
            fieldnames=[
                "order",
                "chunk_id",
                "kind",
                "origin_level",
                "start_line",
                "end_line",
                "source_rel",
                "target_rel",
                "heading_path",
            ],
            delimiter="\t",
        )
        writer.writeheader()
        for row in rows:
            writer.writerow(row)


def read_manifest(root: Path) -> List[Dict[str, str]]:
    path = root / MANIFEST_FILE
    with path.open("r", encoding="utf-8", newline="") as handle:
        reader = csv.DictReader(handle, delimiter="\t")
        rows = list(reader)
    rows.sort(key=lambda row: int(row["order"]))
    return rows


def read_state(root: Path) -> Dict[str, object]:
    path = root / STATE_FILE
    return json.loads(path.read_text(encoding="utf-8"))


def write_state(root: Path, payload: Dict[str, object]) -> None:
    path = root / STATE_FILE
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def split_command(args: argparse.Namespace) -> int:
    input_path = Path(args.input).resolve()
    out_root = Path(args.out).resolve()

    text = input_path.read_text(encoding="utf-8")
    headings = parse_headings(text)
    chunks = build_chunks(
        text,
        headings,
        base_level=args.base_level,
        max_level=args.max_level,
        max_lines=args.max_lines,
    )

    source_root = out_root / args.source_dir
    target_root = out_root / args.target_dir
    source_root.mkdir(parents=True, exist_ok=True)
    target_root.mkdir(parents=True, exist_ok=True)

    manifest_rows: List[Dict[str, str]] = []
    for chunk in chunks:
        source_name = f"{args.source_prefix}-{chunk.chunk_id}.md"
        target_name = f"{args.target_prefix}-{chunk.chunk_id}.md"
        source_path = source_root / source_name
        target_path = target_root / target_name

        source_path.write_text(chunk.text, encoding="utf-8")
        if not target_path.exists():
            target_path.write_text(chunk.text, encoding="utf-8")

        manifest_rows.append(
            {
                "order": str(chunk.order),
                "chunk_id": chunk.chunk_id,
                "kind": chunk.kind,
                "origin_level": str(chunk.origin_level),
                "start_line": str(chunk.start_line),
                "end_line": str(chunk.end_line),
                "source_rel": str(source_path.relative_to(out_root)),
                "target_rel": str(target_path.relative_to(out_root)),
                "heading_path": sanitize_cell(" > ".join(chunk.heading_path)),
            }
        )

    out_root.mkdir(parents=True, exist_ok=True)
    write_manifest(out_root, manifest_rows)
    write_state(
        out_root,
        {
            "input_path": str(input_path),
            "base_level": args.base_level,
            "max_level": args.max_level,
            "max_lines": args.max_lines,
            "source_dir": args.source_dir,
            "target_dir": args.target_dir,
            "source_prefix": args.source_prefix,
            "target_prefix": args.target_prefix,
            "chunk_count": len(chunks),
            "original_sha256": sha256_text(text),
        },
    )

    print(f"input: {input_path}")
    print(f"chunks: {len(chunks)}")
    print(f"manifest: {out_root / MANIFEST_FILE}")
    print(f"source dir: {source_root}")
    print(f"target dir: {target_root}")
    return 0


def read_chunk_texts(root: Path, row: Dict[str, str]) -> Tuple[str, str]:
    source_text = (root / row["source_rel"]).read_text(encoding="utf-8")
    target_path = root / row["target_rel"]
    target_text = target_path.read_text(encoding="utf-8") if target_path.exists() else source_text
    return source_text, target_text


def joined_text(root: Path, rows: Sequence[Dict[str, str]], side: str, normalize_target_edges: bool = False) -> str:
    parts: List[str] = []
    for row in rows:
        if side == "source":
            source_text, _ = read_chunk_texts(root, row)
            text = source_text
        else:
            source_text, target_text = read_chunk_texts(root, row)
            text = normalize_edge_whitespace(source_text, target_text) if normalize_target_edges else target_text
        parts.append(text)
    return "".join(parts)


def verify_command(args: argparse.Namespace) -> int:
    root = Path(args.root).resolve()
    rows = read_manifest(root)
    state = read_state(root)

    missing = []
    for row in rows:
        for key in ("source_rel", "target_rel"):
            path = root / row[key]
            if not path.exists():
                missing.append(str(path))

    if missing:
        print("missing files:")
        for path in missing:
            print(path)
        return 1

    source_text = joined_text(root, rows, "source")
    source_hash = sha256_text(source_text)
    expected_hash = str(state["original_sha256"])

    target_text = joined_text(root, rows, "target")
    target_hash = sha256_text(target_text)

    print(f"chunks: {len(rows)}")
    print(f"source sha256: {source_hash}")
    print(f"target sha256: {target_hash}")

    if source_hash != expected_hash:
        print("source roundtrip mismatch")
        return 1

    edge_mismatches: List[str] = []
    for row in rows:
        source_text, target_text = read_chunk_texts(root, row)
        source_leading, _, source_trailing = split_edge_whitespace(source_text)
        target_leading, _, target_trailing = split_edge_whitespace(target_text)
        if source_leading != target_leading or source_trailing != target_trailing:
            edge_mismatches.append(
                (
                    f"{row['chunk_id']} {row['target_rel']} "
                    f"leading source={describe_whitespace(source_leading)} "
                    f"target={describe_whitespace(target_leading)} "
                    f"trailing source={describe_whitespace(source_trailing)} "
                    f"target={describe_whitespace(target_trailing)}"
                )
            )

    print("source roundtrip: OK")
    if target_hash == expected_hash:
        print("target state: matches source")
    else:
        print("target state: diverged from source")
    if edge_mismatches:
        print(f"edge whitespace mismatches: {len(edge_mismatches)}")
        for mismatch in edge_mismatches[:20]:
            print(mismatch)
        if len(edge_mismatches) > 20:
            print(f"... {len(edge_mismatches) - 20} more")
        return 1
    print("edge whitespace: OK")
    return 0


def join_command(args: argparse.Namespace) -> int:
    root = Path(args.root).resolve()
    rows = read_manifest(root)
    output_path = Path(args.output).resolve()
    text = joined_text(root, rows, args.side, normalize_target_edges=(args.side == "target"))
    output_path.write_text(text, encoding="utf-8")
    print(f"wrote: {output_path}")
    print(f"sha256: {sha256_text(text)}")
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Split and join translation chunks for a master Markdown file.")
    subparsers = parser.add_subparsers(dest="command", required=True)

    split_parser = subparsers.add_parser("split", help="Split a master Markdown file into translation chunks.")
    split_parser.add_argument("input", help="Path to master-*.md")
    split_parser.add_argument("--out", required=True, help="Output directory for chunks and manifest.")
    split_parser.add_argument("--source-prefix", default="master-ja", help="Filename prefix for source chunks.")
    split_parser.add_argument("--target-prefix", default="master-en", help="Filename prefix for target chunks.")
    split_parser.add_argument("--source-dir", default="source", help="Directory name for source chunks.")
    split_parser.add_argument("--target-dir", default="en", help="Directory name for target chunks.")
    split_parser.add_argument("--base-level", type=int, default=2, choices=range(2, 7), help="Primary heading level.")
    split_parser.add_argument("--max-level", type=int, default=4, choices=range(2, 7), help="Deepest heading level used for splitting.")
    split_parser.add_argument("--max-lines", type=int, default=300, help="Split a section when it exceeds this many lines and has children.")
    split_parser.set_defaults(func=split_command)

    verify_parser = subparsers.add_parser("verify", help="Verify roundtrip integrity for source chunks.")
    verify_parser.add_argument("root", help="Split directory created by the split command.")
    verify_parser.set_defaults(func=verify_command)

    join_parser = subparsers.add_parser("join", help="Join chunk files back into a master Markdown file.")
    join_parser.add_argument("root", help="Split directory created by the split command.")
    join_parser.add_argument("--output", required=True, help="Output file path.")
    join_parser.add_argument("--side", choices=("target", "source"), default="target", help="Use target chunks by default, falling back to source when target is missing.")
    join_parser.set_defaults(func=join_command)

    return parser


def main(argv: Sequence[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)
    return int(args.func(args))


if __name__ == "__main__":
    sys.exit(main())
