---
name: inloop-brain
description: "Query Inloop Brain via app.inloop.studio's OpenAI-compatible API and return the assistant reply."
license: "Nonstandard"
compatibility: "Designed for Claude Code. Requires curl, python3, and network access."
allowed-tools: "Bash(curl:*) Bash(python3:*)"
metadata:
  author: "inloop.studio"
  version: "0.1.1"
---

# Inloop Brain (Public API)

Use this skill to query an Inloop Brain via the OpenAI-compatible API at `https://app.inloop.studio/api/v1/chat/completions`.
See `references/api.md` for request/response examples.

## Requirements

- `INLOOP_BRAIN_API_KEY` must be set in the environment.
- Optional overrides:
  - `INLOOP_BRAIN_API_URL`
  - `INLOOP_BRAIN_MODEL`
  - `INLOOP_BRAIN_SYSTEM`

## How to run

Run the script with the user prompt as arguments. If no arguments are provided, read from stdin.

```
Bash
scripts/inloop-ask.sh $ARGUMENTS
```

## Output

Return the assistant content from the API response. If the API returns an error, surface the error message.

## Safety

- Never print or store the API key.
- Do not fabricate answers; always return the API response.
