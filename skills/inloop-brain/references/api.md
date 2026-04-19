# Inloop Brain API

## Endpoint

`POST https://app.inloop.studio/v1/chat/completions`

## Headers

```
Authorization: Bearer <INLOOP_BRAIN_API_KEY>
Content-Type: application/json
```

## Request body

```json
{
  "model": "inloop-brain",
  "messages": [
    {"role": "system", "content": "Optional system prompt"},
    {"role": "user", "content": "Your question"}
  ]
}
```

The `system` message is optional. The `model` field must be `"inloop-brain"`.

## Successful response (200)

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

Extract the reply from: `choices[0].message.content`

## Error response (4xx)

```json
{"error": "message describing what went wrong"}
```

Do not retry on 4xx. Surface the error message to the user.
