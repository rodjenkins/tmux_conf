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
| `C-a` `[` | Copy mode (vi keys; `v` select, `y` yank) |

## Files

| File | Purpose |
|------|---------|
| `tmux.conf` | Config (symlinked to `~/.tmux.conf`) |
| `install.sh` | Safe symlink helper |
| `LICENSE` | Unlicense (public domain) |

## License

Unlicense — see [LICENSE](LICENSE).
