local lush = require("lush")
local base = require("tavern.base")

---@diagnostic disable: undefined-global
-- selene: allow(undefined_variable)
-- stylua: ignore start
local spec = lush(function()
	return {
		-- DRESSING
		DressingSelectIdx { base.Special },
	}
end)

return spec
