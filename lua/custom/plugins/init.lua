local client = vim.lsp.start_client {
  name = 'exoconfiglsp',
  cmd = { '/Users/alecjohanson/Exosite/exoconfiglsp/main' },
}

if not client then
  return
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'json',
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})
