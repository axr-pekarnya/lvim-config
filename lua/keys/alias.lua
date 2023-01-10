-- This file incapsulates working with keys

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

