# Inloop Brain

A command-line tool for interacting with the Inloop Brain Access Kit API.

## Installation

```
gem install inloop-brain
```

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


## License

The gem is available as open source under the terms of the Nonstandard license of inloop.studio