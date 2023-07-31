-- This file defines built-in plugins configs

lvim.builtin.alpha.active = true -- Enabled core plugins
lvim.builtin.autopairs.active = false -- Elementary
lvim.builtin.lualine.active = true -- Bottom status bar

lvim.builtin.treesitter.ensure_installed = { -- Elementary
    "bash",
    "c",
    "json",
    "lua",
    "python",
    "rust",
    "go"
}

lvim.builtin.cmp.sources = {
    {
        name = "nvim_lsp",
        entry_filter = function(entry)
            return require("cmp").lsp.CompletionItemKind.Snippet ~= entry:get_kind()
        end
    }
}

