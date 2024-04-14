local libmodal = require 'libmodal'


local resize_keymap =
{
	Up = 'resize -2',
	Down = 'resize +2',
	Left = 'vertical resize +2',
	Right = 'vertical resize -2'
}

local function enter_resize()
    libmodal.mode.enter('RESIZE', resize_keymap)
end

vim.keymap.set('n', 'R', enter_resize)
