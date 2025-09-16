#!/usr/bin/env python3
"""
Rhythmpress post-merge hook (one-shot, no env vars).

Usage (called by your shell):
  python3 _rhythmpress.hook-after._sidebar-*.generated.yml.py <YAML_FILE> <LANG_ID> <BASE>

Effect:
- Reads <YAML_FILE>, finds website.sidebar.contents (list).
- If the first item is the top link (href includes 'index.qmd' or text contains 'トップ'),
  it is removed.
- The remaining items are wrapped under a single section:
    - 'ハイパーグルーヴ理論' when LANG_ID starts with 'ja'
    - 'Hypergroove Theory' otherwise.
- Writes back to <YAML_FILE>.
"""
import sys
import json
from typing import Any, Dict, List

def load_yaml(path: str) -> Any:
    try:
        import yaml  # type: ignore
        with open(path, "r", encoding="utf-8") as f:
            return yaml.safe_load(f) or {}
    except Exception:
        # Fallback: use yq to convert YAML->JSON
        import subprocess
        res = subprocess.run(["yq", "-o=json", path], capture_output=True, text=True)
        if res.returncode != 0:
            print(res.stderr, file=sys.stderr)
            sys.exit(res.returncode)
        return json.loads(res.stdout or "{}")

def dump_yaml(path: str, data: Any) -> None:
    try:
        import yaml  # type: ignore
        with open(path, "w", encoding="utf-8") as f:
            yaml.safe_dump(data, f, allow_unicode=True, sort_keys=False, width=4096)
    except Exception:
        # Fallback: JSON -> yq (pretty YAML)
        import subprocess, tempfile, os, json as _json
        tmp = path + ".tmp.json"
        with open(tmp, "w", encoding="utf-8") as f:
            _json.dump(data, f, ensure_ascii=False, indent=2)
        try:
            res = subprocess.run(["yq", "-P", tmp], capture_output=True, text=True)
            if res.returncode != 0:
                print(res.stderr, file=sys.stderr)
                sys.exit(res.returncode)
            with open(path, "w", encoding="utf-8") as f:
                f.write(res.stdout)
        finally:
            try: os.remove(tmp)
            except OSError: pass

def is_top_link(item: Any) -> bool:
    if not isinstance(item, dict):
        return False
    href = str(item.get("href", ""))
    text = str(item.get("text", ""))
    # Conservative: recognize either explicit top label or index.qmd href
    if "トップ" in text:
        return True
    if "index.qmd" in href:
        return True
    return False

def section_title_for(lang_id: str) -> str:
    return "ハイパーグルーヴ理論" if lang_id.lower().startswith("ja") else "Hypergroove Theory"

def main() -> None:
    if len(sys.argv) < 2:
        print("Usage: hook.py <YAML_FILE> <LANG_ID> <BASE>", file=sys.stderr)
        sys.exit(2)

    yaml_file = sys.argv[1]
    lang_id   = sys.argv[2] if len(sys.argv) > 2 else "ja"
    # base = sys.argv[3] if len(sys.argv) > 3 else ""  # not used in this hook

    data = load_yaml(yaml_file)

    website = data.get("website")
    if not isinstance(website, dict):
        return
    sidebar = website.get("sidebar")
    if not isinstance(sidebar, dict):
        return
    contents = sidebar.get("contents")
    if not isinstance(contents, list):
        return

    # 1) Drop the top link if present
    body: List[Any] = contents[:]
    if body and is_top_link(body[0]):
        body = body[1:]

    # 2) Wrap under a single section
    wrapped = {
        "section": section_title_for(lang_id),
        "contents": body,
    }
    sidebar["contents"] = [wrapped]

    # Ensure the nodes are default to open
    sidebar["collapse-level"] = 3  # or 6

    dump_yaml(yaml_file, data)

if __name__ == "__main__":
    main()

