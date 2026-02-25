---
name: inloop-llms
description: "Fetch llms.txt from a public Inloop share link using a share key."
license: "Nonstandard"
compatibility: "Designed for Claude Code. Requires curl and network access."
allowed-tools: "Bash(curl:*)"
metadata:
  author: "inloop.studio"
  version: "0.1.1"
---

# Inloop LLMs (Public Share)

Fetch `llms.txt` from a public share link (e.g., `https://app.inloop.studio/share/<token>`) using a share key.
See `references/llms-share.md` for details.

## Requirements

- Provide a share link URL and a share key.
- You can pass them as arguments or set environment variables:
  - `INLOOP_LLMS_SHARE_URL`
  - `INLOOP_LLMS_SHARE_KEY`

## How to run

```
Bash
scripts/inloop-llms.sh $ARGUMENTS
```

## Output

Print the `llms.txt` content on success. Surface any error message from the server.

## Safety

- Never print or store the share key.
- Do not fabricate content; always return the fetched text.
