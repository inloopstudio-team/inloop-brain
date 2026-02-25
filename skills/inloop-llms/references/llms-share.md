# LLMs Share Link

Endpoint:

- `GET https://app.inloop.studio/share/<token>`

Headers:

- `Authorization: Bearer <INLOOP_LLMS_SHARE_KEY>`

Notes:

- You can also pass the key via query params (`?key=...`) or `X-Share-Key` header.
- Response is plain text (the `llms.txt` content).
