vim.opt.background = "dark"
vim.g.colors_name = "tavern"
package.loaded["tavern"] = nil
require("lush")(require("tavern"))
