# Inloop Brain API

Endpoint:

- `POST https://app.inloop.studio/api/v1/chat/completions`

Headers:

- `Authorization: Bearer <INLOOP_BRAIN_API_KEY>`
- `Content-Type: application/json`

Payload example:

```json
{
  "model": "inloop-brain",
  "messages": [
    {"role": "user", "content": "Summarize the outcomes."}
  ]
}
```

Response example:

```json
{
  "id": "chatcmpl-...",
  "object": "chat.completion",
  "created": 1710000000,
  "model": "inloop-brain",
  "choices": [
    {
      "index": 0,
      "message": {"role": "assistant", "content": "..."},
      "finish_reason": "stop"
    }
  ]
}
```
