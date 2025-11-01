# tavern.nvim

**A low-hue dark neovim colorscheme**

See [vimcolorschemes](https://vimcolorschemes.com/mstcl/tavern.nvim) for a
preview.

## Extending using Lush

By default, only base Neovim, Treesitter and LSP highlights are loaded.
To extend, we use [Lush](https://github.com/rktjmp/lush.nvim) to merge
integration highlight groups.

The easiest way is to create a new "extended" theme.
For example, make the file `~/.config/nvim/colors/tavern_extended.lua` and use
`lush.merge()` to extend:

```lua
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.o.termguicolors = true
vim.o.background = "light"
vim.g.colors_name = "tavern_extended"

package.loaded["tavern"] = nil

local lush = require("lush")
local extended = lush.merge({
	require("tavern"),
	-- other integration
})

lush(extended)
```

All available integrations are found in the `lua` directory.
