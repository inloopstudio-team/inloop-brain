# Inloop Brain

A command-line tool for interacting with the Inloop Brain OpenAI-compatible API.

## Installation

```
gem install inloop-brain
```

## Requirements

- Ruby >= 2.6.0

## Usage

```
echo "What can you do?" | inloop-brain --key=YOUR_API_KEY
```

Or

```
echo "What can you do?" | inloop-brain -k YOUR_API_KEY > output.txt
```

### Environment Variables

Use an API key generated from the Brain API share link in app.inloop.studio. The API uses the published `llms.txt` context when available.

- `INLOOP_BRAIN_API_KEY`: API key used for Authorization (recommended)
- `INLOOP_BRAIN_API_URL`: Full API URL (default: https://app.inloop.studio/api/v1/chat/completions)
- `INLOOP_BRAIN_MODEL`: Model name to send (default: inloop-brain)
- `INLOOP_BRAIN_HOST`: Host override (default: app.inloop.studio)
- `INLOOP_BRAIN_PROTOCOL`: Protocol override (default: https)

### Options

- `--api-url`: Override API URL
- `--model`: Model name to send
- `--system`: System prompt to prepend

## Development

### Dependencies

- bundler (~> 2.0)
- rake (~> 13.0)
- rspec (~> 3.0)

## Links

- Homepage: https://inloop.studio
- Source Code: https://github.com/inloopstudio-team/inloop-brain
- Changelog: https://github.com/inloopstudio-team/inloop-brain/blob/main/CHANGELOG.md

## License

The gem is available as open source under the terms of the Nonstandard license of inloop.studio
