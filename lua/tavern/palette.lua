local lush = require("lush")
local hsluv = lush.hsluv

local bg = hsluv(55, 11, 8) -- #191715

local fg = hsluv(48, 30, 80) -- #DBC2AE

local accent = hsluv(18, 80, 60) -- #F0644A

local red = hsluv(16, 54, 48) -- #B4554C
local green = hsluv(90, 20, 65) -- #9E9F8C
local yellow = hsluv(60, 44, 60) -- #A38E6B
local blue = hsluv(250, 12, 68) -- #A1A6B1
local magenta = hsluv(340, 15, 68) -- #B6A0A9
local cyan = hsluv(40, 45, 65) -- #C39474

local palette = {
	accent = accent,

	bg0 = bg,
	bg1 = bg.abs_li(2), -- #1D1B19
	bg2 = bg.abs_li(5), -- #23211F
	bg3 = bg.abs_da(2), -- #151311

	fg0 = fg,
	fg1 = fg.abs_da(10), -- #C2A68E
	fg2 = fg.abs_da(20), -- #A48C78
	fg3 = fg.abs_da(30), -- #877362
	fg4 = fg.abs_da(40), -- #6C5B4D
	fg5 = fg.abs_da(50), -- #514439

	red = red,
	green = green,
	yellow = yellow,
	blue = blue,
	magenta = magenta,
	cyan = cyan,

	addbg = bg.ro(44).abs_li(10).abs_sa(5), -- #2F312B
	modbg = bg.ro(260).abs_sa(5).abs_li(10), -- #382D36
	delbg = bg.ro(-40).abs_sa(15).abs_li(10), -- #432A28

	addfg = hsluv(95, 14, 70), -- #AAAD9E
	modfg = hsluv(325, 24, 70), -- #C2A2B7
	delfg = hsluv(10, 25, 70), -- #C5A3A4

	warningbg = bg.abs_sa(15).abs_li(10),
	infobg = bg.ro(158).abs_sa(10).abs_li(10),
	hintbg = bg.ro(237).abs_sa(10).abs_li(10),
	errorbg = bg.ro(-27).abs_sa(15).abs_li(10),
}

return palette
