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
- `INLOOP_BRAIN_API_URL`: Full API URL (default: https://app.inloop.studio/v1/chat/completions)
- `INLOOP_BRAIN_MODEL`: Model name to send (default: inloop-brain)
- `INLOOP_BRAIN_HOST`: Host override (default: app.inloop.studio)
- `INLOOP_BRAIN_PROTOCOL`: Protocol override (default: https)
- `INLOOP_BRAIN_SSL_STRICT`: Set to `1` to enforce strict TLS verification (disables the default compatibility behavior that ignores missing certificate CRLs)

### Options

- `--api-url`: Override API URL
- `--model`: Model name to send
- `--system`: System prompt to prepend

## Claude Code Plugin

The inloop-brain gem ships as a **Claude Code plugin** with two built-in skills:

| Skill | Trigger phrase | What it does |
|-------|---------------|--------------|
| `inloop-brain` | "ask inloop-brain", "what does the project brain say about…" | Queries your project-scoped Inloop Brain knowledge engine |
| `inloop-llms` | "fetch llms.txt from…" | Fetches `llms.txt` from a public Inloop share link |

### Install the plugin

Inside a Claude Code session:

```
/plugin marketplace add https://github.com/inloopstudio-team/inloop-brain.git
```

Then activate:

```
/reload-plugins
```

### Configure your API key

The `inloop-brain` skill resolves your API key in this order (first match wins):

1. `.env` in your project root — `INLOOP_BRAIN_API_KEY=<key>`
2. Shell environment — `export INLOOP_BRAIN_API_KEY=<key>`
3. CLI flag — `inloop-brain -k <key>`

Generate your API key from the Brain share link in [app.inloop.studio](https://app.inloop.studio).

### Usage in Claude Code

Once the plugin is active, ask naturally:

```
ask inloop-brain: what are the onboarding steps for a new client?
```

```
what does the project brain say about our pricing model?
```

```
use the project context to answer: who owns the delivery process?
```

Claude will invoke the `inloop-brain` CLI and return your firm's knowledge directly in the conversation.

## Development

### Dependencies

- bundler (>= 2.0, < 5)
- rake (~> 13.0)
- rspec (~> 3.0)

## Links

- Homepage: https://inloop.studio
- Source Code: https://github.com/inloopstudio-team/inloop-brain
- Changelog: https://github.com/inloopstudio-team/inloop-brain/blob/main/CHANGELOG.md

## License

The gem is available as open source under the terms of the Nonstandard license of inloop.studio
