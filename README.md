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
| `C-a` `m` | Toggle mouse (default **off**; on = wheel scroll / pane click) |
| `C-a` `[` | Copy mode (vi keys; `v` select, `y` yank) |
| **Shift+drag** | Terminal-native copy while mouse is **on** |

### Copy / paste

**Default: mouse off** — highlight with the mouse and use your terminal’s normal copy (Cmd/Ctrl+C). That is the reliable path over SSH.

When mouse is **on** (`C-a m`):

- Tmux owns the mouse; a plain drag does **not** fill the OS clipboard unless OSC 52 is allowed by the client (often blocked).
- Use **Shift+drag** (macOS Terminal/iTerm often: **Option/Alt+drag** instead) for terminal-native select.
- Or `C-a m` again to turn mouse off, then select normally.

Paste into the session: terminal paste (Cmd/Ctrl+V). tmux buffer paste: `C-a ]`.

## Files

| File | Purpose |
|------|---------|
| `tmux.conf` | Config (symlinked to `~/.tmux.conf`) |
| `install.sh` | Safe symlink helper |
| `LICENSE` | Unlicense (public domain) |

## License

Unlicense — see [LICENSE](LICENSE).
