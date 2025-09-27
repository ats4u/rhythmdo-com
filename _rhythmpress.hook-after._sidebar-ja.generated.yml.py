#!/usr/bin/env python3
"""
Rhythmpress post-merge hook (protocol):
  Name: _rhythmpress.hook-after._sidebar-<LANG>.generated.py
  Args: <YAML_FILE> <LANG_ID> <BASE>
Effect: Leave file as-is, only set website.sidebar.collapse-level = 3.
"""
import sys
from typing import Any
import yaml

def main() -> None:
    if len(sys.argv) < 2:
        print("Usage: hook.py <YAML_FILE> <LANG_ID> <BASE>", file=sys.stderr)
        sys.exit(2)

    path = sys.argv[1]

    with open(path, "r", encoding="utf-8") as f:
        data: Any = yaml.safe_load(f) or {}

    ws = data.get("website")
    sb = ws.get("sidebar") if isinstance(ws, dict) else None
    if isinstance(sb, dict):
        sb["collapse-level"] = 3  # only change we make

        with open(path, "w", encoding="utf-8") as f:
            yaml.safe_dump(data, f, allow_unicode=True, sort_keys=False, width=4096)

if __name__ == "__main__":
    main()

