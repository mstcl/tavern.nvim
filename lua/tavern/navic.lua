local lush = require("lush")
local palette = require("tavern.palette")
local base = require("tavern.base")
---@diagnostic disable: undefined-global
-- selene: allow(undefined_variable)
-- stylua: ignore start
local spec = lush(function()
	return {
		-- NAVIC
		NavicSeparator { fg = palette.fg4 },
		NavicText { base.StatusLineNC },
	}
end)

return spec
