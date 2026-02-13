local servers = {
  'ts_ls', 'lua_ls', 'clangd'
}

local on_attach = function(client, buffer_num)
  client.server_capabilities.semanticTokensProvider = nil

  local opts = {
    buffer = buffer_num, silent = true
  }

  vim.keymap.set("n", "<leader>sd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "[s]ee [d]efinition" }))
  vim.keymap.set("n", "<leader>sr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "[s]ee [r]eferences" }))
  vim.keymap.set("n", "<leader>se", vim.diagnostic.open_float, vim.tbl_extend("force", opts, { desc = "[s]ee [e]rror" }))
  vim.keymap.set("n", "<leader>sh", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "[s]ee [h]elp"}))
  vim.keymap.set("n", "<leader>sq", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "[s]ee [q]uickfixes" }))
  vim.keymap.set("n", "<leader>sf", vim.lsp.buf.format, vim.tbl_extend("force", opts, { desc = "[s]ee [f]ormatted" }))
end

for _, name in ipairs(servers) do
  vim.lsp.config(name, { on_attach = on_attach })
  vim.lsp.enable(name)
end
