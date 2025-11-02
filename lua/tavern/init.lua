---@diagnostic disable: undefined-global
local lush = require("lush")
local theme = lush.merge({
	require("tavern.base"),
	require("tavern.statusline"),
	require("tavern.treesitter"),
	require("tavern.lsp"),
	require("tavern.mini"),
})

return theme
