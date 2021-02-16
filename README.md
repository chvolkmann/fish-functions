# fish-functions

Repo for fish shell utility functions.

## reload
Re-sources the target script into the active shell session. Useful to force reload functions you're currently working.
```fish
reload [name]
```
Where `name` is the name of a function in `~/.config/fish/functions` or a path relative to `~/.config/fish`.
