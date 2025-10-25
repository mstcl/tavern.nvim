---@diagnostic disable: undefined-global
local lush = require("lush")
local default = lush.merge({
	require("tavern_base"),
	require("tavern_statusline"),
	require("tavern_treesitter"),
	require("tavern_lsp"),
})

return default
