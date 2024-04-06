# Minimalistic NeoVim config.

Mainly so I don't forget how to setup stuff. This is also my kind of documentation/memorise map for different vim features, shortcuts.

Commands recommended to run after installation:
`:checkhealth lazy`

### Clean start:

```
rm -rf ~/.local/share/nvim
```

```
rm -rf ~/.config/nvim
```

### Adding plugins:

- Add plugin in lua/mike/lazy.lua
- Make sure to require it in plugin directory lua/mike/init.lua, e.g.

```lua
require("mike.remap")
require("mike.lazy")
require("mike.telescope")
require("mike.whichkey")
require("mike.lazygit")
```

### Todos:

- [x] Telescope
- [x] ESLint
- [x] LSP
- [x] Autocompletion
- [ ] Treesitter
- [ ] Copilot

## Useful VIM tricks

### Marks:

Marks are pretty useful. We can keep track of saved buffers and specific lines. Use case: press `mV` in current file, and close Vim. Next time you want to edit this file just press `'V'. 
Although harpoon could be better for that purpose since it also works per project and remembers the **cursor position**.

### Splitting terminals:

`<C-w>s` splits the current window horizontally.
`<C-w>v` splits the current window vertically.

