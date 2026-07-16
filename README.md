# tmux_conf

Personal tmux config — C-a prefix, vim pane keys, windows from 1.  
Ported from an old Thoughtbot-style setup; kept minimal for servers (e.g. AWS UAT).

## Install

```bash
git clone git@github.com:rodjenkins/tmux_conf.git ~/tmux_conf
cd ~/tmux_conf
./install.sh
```

Or manually:

```bash
ln -sfn ~/tmux_conf/tmux.conf ~/.tmux.conf
```

Reload inside tmux: **prefix + r** (`C-a r`), or:

```bash
tmux source-file ~/.tmux.conf
```

## Cheat sheet

| Keys | Action |
|------|--------|
| `C-a` | Prefix |
| `C-a` `C-a` | Last pane |
| `C-a` `a` | Send literal C-a to pane |
| `C-a` `h/j/k/l` | Move between panes (vim) |
| `C-a` `C-h` / `C-l` | Previous / next window |
| `C-a` `\|` / `-` | Split horizontal / vertical |
| `C-a` `c` | New window (current path) |
| `C-a` `r` | Reload config |
| `C-a` `m` | Toggle mouse (off → terminal-native select works) |
| `C-a` `[` | Copy mode (vi keys; `v` select, `y` yank) |
| **Shift+drag** | Terminal-native copy while mouse is on |

### Copy / paste

With `mouse on`, a normal drag is handled by **tmux**, not the outer terminal — so OS clipboard paste can feel “broken.”

- **Shift+drag** (or Option/Alt+drag in some macOS terminals): select for the outer terminal’s copy
- **Mouse drag** then release: copy into tmux buffer; with OSC 52, also the system clipboard if your client allows it
- **`C-a m`**: turn mouse off temporarily for normal select/copy
- **Paste into tmux:** usually middle-click or terminal paste (`Cmd/Ctrl+V`) still works; if not, `C-a ]` pastes tmux buffer

## Files

| File | Purpose |
|------|---------|
| `tmux.conf` | Config (symlinked to `~/.tmux.conf`) |
| `install.sh` | Safe symlink helper |
| `LICENSE` | Unlicense (public domain) |

## License

Unlicense — see [LICENSE](LICENSE).
