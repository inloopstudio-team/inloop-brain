# Curl Fallback

Use only when the `inloop-brain` gem is not installed.

```bash
curl -s https://app.inloop.studio/v1/chat/completions \
  -H "Authorization: Bearer $INLOOP_BRAIN_API_KEY" \
  -H "Content-Type: application/json" \
  -d "{\"model\":\"inloop-brain\",\"messages\":[{\"role\":\"user\",\"content\":\"<question>\"}]}" \
  | python3 -c "import sys,json; print(json.load(sys.stdin)['choices'][0]['message']['content'])"
```

Replace `<question>` with the actual prompt. The reply is extracted from `choices[0].message.content`.

On error, the API returns JSON with an `"error"` key. Print it and stop.
