vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {desc='ARJ Exit Insert Mode'})
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle! right<CR>', {desc=' ARJ Toggle Aerial'})
vim.keymap.set('n', '<leader>,', '/<<CR>ca<')
vim.keymap.set('n', '<leader>e', '<Cmd>Neotree<CR>')
vim.keymap.set('n', '<leader>t', '<Cmd>ToggleTerm<CR>')
vim.keymap.set('n', '<leader><leader>t', '<Cmd>!pytest<CR>')
vim.keymap.set('n', '<leader>o', '<Cmd>Oil<CR>')
--vim.keymap.set('n', '<leader>o', '<Cmd>lua MiniFiles.open()<CR>')
---- ------------------------------
vim.keymap.set({'n', 'i'}, '<C-n>', '<cmd>cnext<CR>') -- option j
vim.keymap.set({'n', 'i'}, '<C-p>', '<cmd>cprev<CR>') -- option k

vim.keymap.set("n", "gj", vim.diagnostic.goto_next)
vim.keymap.set("n", "gk", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader><leader>g", '<cmd>FloatermNew --height=0.90 --width=0.90 --autoclose=2 lazygit <CR>', {desc="ARJ - Open Neorg Notes"})
vim.keymap.set("n", "<leader>df", vim.diagnostic.setqflist, {desc="ARJ - Diagnostics in quick fix list"})

vim.keymap.set("n", "<leader>ca", '<cmd>lua vim.lsp.buf.code_action({apply=true})<CR>', {desc = "Code Action"})

vim.keymap.set("n", "<leader><leader>d", '<cmd>r! date "+\\%Y-\\%m-\\%d \\%H:\\%M:\\%S"<CR>A')
vim.keymap.set("n", "<leader><tab>", '<cmd>tabn<CR>')
vim.keymap.set("i", "<C-space>", require('cmp').mapping.complete())

vim.api.nvim_create_user_command('Csv',function()
  vim.cmd('CsvViewToggle')
end,{})


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

vim.keymap.set("n", "<leader><leader>n", function()
  require('telescope.builtin').find_files {cwd="~/Notes/"}
  end
  , {desc="ARJ - Open Neorg Notes"})

