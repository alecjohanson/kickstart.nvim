-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local client = vim.lsp.start_client {
  name = 'exoconfiglsp',
  cmd = { '/Users/alecjohanson/Exosite/exoconfiglsp/main' },
  on_attach = on_attach,
}

if not client then
  vim.notify 'You set up the client poorly'
  return
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'json',
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})
