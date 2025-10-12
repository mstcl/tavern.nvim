# tavern

**A low-hue dark neovim colorscheme**

See [vimcolorschemes](https://vimcolorschemes.com/mstcl/tavern.nvim) for a
preview.

## Installation

Using lazy.nvim:

```lua
{
    "mstcl/tavern.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("tavern")
    end,
},
```

## Extending using Lush

By default, only Treesitter and LSP highlights are loaded.
To extend, we use [Lush](https://github.com/rktjmp/lush.nvim) to extend the
colorscheme.

The easiest way is to add a new theme.
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
	require("tavern_aerial"),
	require("tavern_arrow"),
	require("tavern_barbecue"),
	require("tavern_biscuits"),
	require("tavern_bufferline"),
	require("tavern_cmp"),
	require("tavern_dap"),
	require("tavern_dap_ui"),
	require("tavern_diffview"),
	require("tavern_dressing"),
	require("tavern_flash"),
	require("tavern_floaterm"),
	require("tavern_gitsigns"),
	require("tavern_incline"),
	require("tavern_mason"),
	require("tavern_mini_cursorword"),
	require("tavern_mini_indentscope"),
	require("tavern_mini_map"),
	require("tavern_mini_starter"),
	require("tavern_mini_tabline"),
	require("tavern_modes"),
	require("tavern_navic"),
	require("tavern_neogit"),
	require("tavern_noice"),
	require("tavern_null_ls"),
	require("tavern_notify"),
	require("tavern_rainbow"),
	require("tavern_statusline"),
	require("tavern_telescope"),
	require("tavern_trouble"),
	require("tavern_ufo"),
})

lush(extended)
```

Then modify the plugin spec to add Lush as a dependency, and use the extended
colorscheme:

```lua
{
    -- Colorscheme
    "mstcl/tavern.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
        "rktjmp/lush.nvim",
    },
    config = function()
        vim.cmd.colorscheme("tavern_extended")
    end,
},
```

All available integrations are found in the `lua` directory.
