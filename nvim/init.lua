require("plugins").setup()
require("utils")
require("options")
require("mappings")

-- run PackerCompile whenever plugins.lua is updated
-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--   augroup end
-- ]])

-- vim.cmd([[augroup remember_folds
--  autocmd!
--  au BufWinLeave ?* mkview 1
--  au BufWinEnter ?* silent! loadview 1
-- augroup END
-- ]])
