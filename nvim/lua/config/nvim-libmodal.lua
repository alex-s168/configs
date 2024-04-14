

local MODES = {
  ['i']  = 'INSERT',
  ['n']  = 'NORMAL',
  ['�'] = 'SELECT',
  ['v']  = 'VISUAL',
  ['V']  = 'VISUAL LINE',

  -- libmodal
  ['RESIZE'] = TEAL,
  ['TABS'] = TAN
}

local MODE_HL_GROUP = 'LualineViMode'

vim.api.nvim_create_autocmd('ModeChanged', {
    callback = function()
        require('lualine').refresh {
            scope = 'window',
            place = {'statusline'}
        }
    end
})

require('lualine').setup {sections = {lualine_a = {{
    function() -- auto change color according the vim mode
        local mode_color, mode_name

        if vim.g.libmodalActiveModeName then
            mode_name = vim.g.libmodalActiveModeName
            mode_color = MODES[mode_name]
            vim.api.nvim_set_hl(0, MODE_HL_GROUP, {fg = mode_color, bold = true})
        else
            local current_mode = MODES[vim.api.nvim_get_mode().mode]
            mode_name = current_mode
        end

        return mode_name..' '
    end,
}}}}
