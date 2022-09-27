require("bufferline").setup {
    options = {
        -- numbers = "none",
        numbers =   function(opts)
                        return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
                    end,
        diagnostics = "nvim_lsp",
        separator_style = "thin",
        show_tab_indicators = true,
        -- show_buffer_close_icons = false,
        -- show_close_icon = false,
        },
}
