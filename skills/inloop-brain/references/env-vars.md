# Environment Variables

| Variable | Default | Purpose |
|---|---|---|
| `INLOOP_BRAIN_API_KEY` | _(required)_ | Bearer token for the API |
| `INLOOP_BRAIN_MODEL` | `inloop-brain` | Model name sent in the request |
| `INLOOP_BRAIN_API_URL` | `https://app.inloop.studio/v1/chat/completions` | Full endpoint override |
| `INLOOP_BRAIN_HOST` | `app.inloop.studio` | Host-only override (combined with protocol) |
| `INLOOP_BRAIN_PROTOCOL` | `https` | Protocol override |
| `INLOOP_BRAIN_SSL_STRICT` | _(unset)_ | Set to `1` to enforce strict TLS/CRL checking |

CLI flags override env vars. Env vars override `.env` file values.

## CLI flags

```
-k, --key=KEY          API key
-m, --model=MODEL      Model name
    --system=TEXT      System prompt prepended to the conversation
    --api-url=URL      Override the full API URL
-d, --debug            Print request/response headers and body
-h, --help             Show help
```
