---@diagnostic disable: undefined-global
local lushwright = require("shipwright.transform.lush")
run(
	require("tavern"),
	lushwright.to_vimscript,
	{ prepend, "set background=dark" },
	{ prepend, 'let g:colors_name="tavern"' },
	{ patchwrite, "colors/tavern.vim", '" PATCH BEGIN', '" PATCH END' }
)
