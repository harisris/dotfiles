-- cmd([[colorscheme everforest]]) -- Put your favorite colorscheme here

-- Nightfox config
require("nightfox").setup({
    options = {
                transparent = true,
                styles = {
                            comments = "italic",
                            keywords = "bold",
                            functions = "italic,bold",
                        },
                inverse = {
                            -- visual = true,
                            search = true,
                            match_paren = true,
                        },
            },
    groups = {
    --                             Normal = {bg="#040a12", fg="#cdcecf"},
    --                            String = {fg="#9a2a1f"},
    --                            Function = {fg="#d89524"},
    --                            Statement = {fg="#3f8c52"},
   --                         Folded = {bg="#040a12"},
                        },

})

vim.cmd("colorscheme nightfox")
