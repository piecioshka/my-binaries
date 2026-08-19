# my-binaries

🔨 My binaries

## Installation

```bash
cd ~/projects/ # or any workspace what you use
git clone git@github.com:piecioshka/my-binaries.git

# Bash: please add to `~/.bash_profile`
export PATH="$HOME/projects/my-binaries/bin/:$PATH"

# Fish: please add to `~/.config/fish/config.fish`
set -gx PATH $HOME/projects/my-binaries/bin/ $PATH
```

**TIP**: After changing the shell configuration, restart the terminal to apply the new settings.

## Commands

- `timestamp`: Print the current timestamp in seconds and nanoseconds.

## Layout

- `bin/` - the compiled commands, and the only directory that belongs on `PATH`
- `src/` - the sources they are built from

## Build

Compiled binaries are committed, so cloning is enough to use them. Rebuild
after changing a source:

```bash
make        # compiles src/*.c into bin/
make clean  # removes the compiled binaries
```

## License

[The MIT License](https://piecioshka.mit-license.org) @ 2026
