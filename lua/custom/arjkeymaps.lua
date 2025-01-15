vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {desc='ARJ Exit Insert Mode'})
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle! right<CR>', {desc=' ARJ Toggle Aerial'})
vim.keymap.set('n', '<leader>,', '/<<CR>ca<')
vim.keymap.set('n', '<leader>e', '<Cmd>Neotree<CR>')
vim.keymap.set('n', '<leader>t', '<Cmd>ToggleTerm<CR>')
vim.keymap.set('n', '<leader>o', '<Cmd>Oil<CR>')
---- ------------------------------
vim.keymap.set('n', '<CTRL>j', '<cmd>cnext<CR>')
vim.keymap.set('n', '<CTRL>k', '<cmd>cprev<CR>')

vim.keymap.set("n", "gj", vim.diagnostic.goto_next)
vim.keymap.set("n", "gk", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader><leader>n", '<cmd>Neorg<CR>', {desc="ARJ - Open Neorg Notes"})

local ls = require 'luasnip'

vim.keymap.set('i', '<c-l>', function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end)

vim.keymap.set('i', '<c-j>', function()
  if ls.expand_or_jumpable() then
    ls.jump(-1)
  end
end)
