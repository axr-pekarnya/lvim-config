-- This file defines plugins installed with packer configs

vim.g.material_style = "darker"

local opts = {
    {cmd = '--header-insertion=never'}
}
require('lvim.lsp.manager').setup('clangd', opts)

