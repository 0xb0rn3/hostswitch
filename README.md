# hostswitch

A simple bash script to change system hostname on Linux systems.

## Usage

```bash
chmod +x hostswitch
```
Run interactively
```
sudo ./hostswitch

# Show current hostname
sudo ./hostswitch -c

# Show help
./hostswitch -h
```

## Features

- Interactive hostname change with validation
- Automatic backup of configuration files
- Updates `/etc/hostname` and `/etc/hosts`
- Color-coded output
- RFC-compliant hostname validation

## Requirements

- Linux system
- Root privileges (sudo)
- Bash shell

## Author

**0xb0rn3 | 0xbv1**

## Repository

[0xb0rn3/hostswitch](https://github.com/0xb0rn3/hostswitch)

## Version

0.0.1
