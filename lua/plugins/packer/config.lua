-- This file defines plugins installed with packer configs

--local opts = {
--    {cmd = '--header-insertion=never'}
--}
--require('lvim.lsp.manager').setup('clangd', opts)

require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

require('lspconfig').sqls.setup {
    on_attach = function(client, bufnr)
        require('sqls').on_attach(client, bufnr)
    end
}

