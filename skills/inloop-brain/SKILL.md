---
name: inloop-brain
description: "Queries the Inloop Brain, a project-aware AI assistant that answers questions using the current project's llms.txt knowledge base, via the inloop-brain CLI. Use when the user says 'ask inloop-brain', 'what does the project brain say about', 'use the project context to answer', or when a question should be answered from project-specific knowledge rather than general training data."
allowed-tools: "Bash(inloop-brain:*) Bash(echo:*) Bash(curl:*)"
metadata:
  author: "inloop.studio"
  version: "0.3.0"
---

# Inloop Brain

Queries the current project's Inloop Brain — an AI endpoint pre-loaded with the project's `llms.txt` knowledge context.

## Quick start

```bash
echo "Your question here" | inloop-brain
```

With a system prompt:

```bash
echo "Your question" | inloop-brain --system="Be concise."
```

## API key

The key is resolved in this order (first match wins):

1. `.env` in the current directory — `INLOOP_BRAIN_API_KEY=<key>` (auto-loaded)
2. Shell env — `export INLOOP_BRAIN_API_KEY=<key>`
3. CLI flag — `inloop-brain -k <key>`

If no key is found, tell the user: _"Set INLOOP_BRAIN_API_KEY in your .env or environment and retry."_
Never print or log the key.

## Output

Print the assistant reply verbatim. On API error, surface the error message and stop — do not retry 4xx responses.

## Reference

- Environment variables and overrides → [references/env-vars.md](references/env-vars.md)
- API request/response format → [references/api.md](references/api.md)
- Curl fallback (when gem is not installed) → [references/curl-fallback.md](references/curl-fallback.md)
