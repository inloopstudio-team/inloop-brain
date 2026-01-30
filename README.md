# Inloop Brain

A command-line tool for interacting with the Inloop Brain Access Kit API.

## Installation

```
gem install inloop-brain
```

## Requirements

- Ruby >= 2.6.0

## Usage

```
echo "What can you do?" | inloop-brain --key=YOUR_ACCESS_KEY
```

Or

```
echo "What can you do?" | inloop-brain -k YOUR_ACCESS_KEY > output.txt
```

### Environment Variables

You can customize the target host and protocol:

- `INLOOP_BRAIN_HOST`: Host to connect to (default: localhost:3000)
- `INLOOP_BRAIN_PROTOCOL`: Protocol to use (default: http)

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
