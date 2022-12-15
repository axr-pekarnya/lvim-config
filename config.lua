-- This file is main that links all configs

-- Commented case below allows separating config file in deifferent files in nvim, mb fix it sooner.

--[[
-- base
require('base/search') -- Search configs
require('base/indents') -- Indentation configs
require('base/visual') -- GUI configs
require('base/other')

-- keys
require('keys/alias') -- Shortcuts and incapsulation
require('keys/main') -- Keys for built-in features
require('keys/plugins') -- Keys for plugged features

-- plugins
require('plugins/core/use') -- Buil-in plugins that are being used
require('plugins/core/config') -- Configs for built-in plugins

require('plugins/packer/use') -- Packer pluggins that are being used
require('plugins/packer/config') -- Configs for packer plugins
]]

-- base/indents

vim.opt.shiftwidth = 4 -- Elementary
vim.opt.tabstop = 4 -- Elementary
vim.opt.autoindent = true -- Elementary
vim.opt.smartindent = true -- Makes indentation better
vim.opt.cindent = true -- Specifies indentation for C language

-- base/other

lvim.log.level = "warn" -- Elementary
lvim.format_on_save.enabled = false -- Exclude formatting on save
lvim.builtin.alpha.active = true -- Enabled core plugins

vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]] -- No autocommenting

-- base/search 

vim.opt.ignorecase = true -- Ignore case while searching
vim.opt.smartcase = true -- Do not igonre while searching if there are upper case letters
vim.opt.showmatch = true -- Highlight found text matches

-- base/visual

lvim.colorscheme = "lunar" -- Selected colorscheme
lvim.use_icons = true -- elementary

-- keys/allias

local map = vim.api.nvim_set_keymap -- Defining local variable (shortcut)

function NM(key, command) -- Sets (normal mode) key - {string}
	map('n', key, command, {noremap = true})
end

function IM(key, command) -- Sets (input mode) key - {string}
	map('i', key, command, {noremap = true})
end

function VM(key, command) -- Sets (visual mode) key - {string}
	map('v', key, command, {noremap = true})
end

function TM(key, command) -- Sets (terminal mode) key - {string}
	map('t', key, command, {noremap = true})
end

-- keys/main

NM("<Tab>", ":bnext<cr>") -- Switch to the next tab on <ctrl + Tab>
NM("<C-s>", ":w<cr>") -- Save file in input mode

-- keys/plugins

NM("<C-t>", ":NERDTreeCWD<cr>") -- Create NERDTree in current directory 
NM("<C-h>", ":NERDTreeToggle<cr>") -- Show/hide tree in vertical split
NM("<C-r>", ":NERDTreeRefreshRoot<cr>") -- Refresh opened folders

-- plugins/core/use

-- plugins/core/config

lvim.builtin.treesitter.ensure_installed = { -- Elementary
  "bash",
  "c",
  "json",
  "lua",
  "python",
  "rust",
}

-- plugins/packer/use

lvim.plugins = {
    {'preservim/nerdtree'}, -- Files tree
    {"neovim/nvim-lspconfig"}, -- Configurations for Nvim LSP
    {"ryanoasis/vim-devicons"} -- Incons for NerdTree    
}

-- plugins/packer/config







