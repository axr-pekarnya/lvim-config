-- This file describes general behaviour

lvim.log.level = "warn" -- Elementary
lvim.format_on_save.enabled = false -- Exclude formatting on save
lvim.builtin.alpha.active = true -- Enabled core plugins

vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]] -- No autocommenting
