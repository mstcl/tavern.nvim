local lush = require("lush")
local hsluv = lush.hsluv

local bg = hsluv(55, 11, 10)

local fg = hsluv(5, 5, 90)

local accent = hsluv(18, 80, 60)

local red = hsluv(15, 25, 60)
local green = hsluv(90, 20, 65)
local yellow = hsluv(25, 25, 60)
local blue = hsluv(250, 12, 68)
local magenta = hsluv(340, 15, 68)
local cyan = hsluv(40, 40, 65)

local palette = {
	accent = accent,

	bg0 = bg,
	bg1 = bg.abs_li(2),
	bg2 = bg.abs_li(5),
	bg3 = bg.abs_da(2),

	fg0 = fg,
	fg1 = fg.ro(30).abs_sa(18).abs_da(10),
	fg2 = fg.ro(30).abs_sa(18).abs_da(20),
	fg3 = fg.ro(30).abs_sa(18).abs_da(30),
	fg4 = fg.ro(30).abs_sa(18).abs_da(40),
	fg5 = fg.ro(30).abs_sa(18).abs_da(50),

	red = red,
	green = green,
	yellow = yellow,
	blue = blue,
	magenta = magenta,
	cyan = cyan,

	addbg = bg.ro(44).abs_li(10).abs_sa(5),
	modbg = bg.ro(260).abs_sa(5).abs_li(10),
	delbg = bg.ro(-40).abs_sa(15).abs_li(10),

	addfg = hsluv(95, 14, 70),
	modfg = hsluv(325, 24, 70),
	delfg = hsluv(10, 25, 70),

	warningbg = bg.abs_sa(15).abs_li(10),
	infobg = bg.ro(158).abs_sa(10).abs_li(10),
	hintbg = bg.ro(237).abs_sa(10).abs_li(10),
	errorbg = bg.ro(-27).abs_sa(15).abs_li(10),
}

return palette
