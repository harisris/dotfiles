local M = {}

local servers = {
    gopls = {},
    html = {},
    jsonls = {},
    pyright = {},
    rust_analyzer = {},
    sumneko_lua = {},
    tsserver = {},
    vimls = {},
    bashls = {},
    ccls ={},
    cssls = {},
    dockerls = {},
    texlab = {},
    sourcekit = {},

}

local function on_attach(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc") -- Completion triggered by <C-X><C-O>, `:help omnifunc` `:help ins-completion` for info.
    vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()") -- Use LSP as the handler for formatexpr, `:help formatexpr` for info.
    require("config.lsp.keymaps").setup(client, bufnr) -- Configure key mappings
end

local opts = {  
                on_attach = on_attach,
                flags = {debounce_text_changes = 150,},
            }

function M.setup()
    require("config.lsp.installer").setup(servers, opts)
end

return M
