local Hydra = require('hydra')

local keybinds = Hydra({
    name = "clangd picker",
    config = {
        color = 'pink',
    },
    hint = [[ 
^^^^    ek  → Explain Keybinds    ta  → Tab Open       ^
^^^^    c   → Color Picker        tc  → Tab Close      ^
^^^^    q   → Clangd Hydra        tn  → Tab Next       ^
^^^^    m   → Open Filetree       tp  → Tab Previous   ^]],
    mode = 'n',
    body = 'ek',
    heads = {
        { 'q', function()

        end, exit = true, desc = "" },
        { 'ek', function()

        end, exit = false, desc = "" }
    }
})

vim.keymap.set('n', 'e', "<Nop>")
vim.keymap.set('n', 'ek', function()
    keybinds:activate()
end)
