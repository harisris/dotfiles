local opt = vim.opt
local g = vim.g
local api = vim.api

opt.backspace = {"indent", "eol", "start"}
opt.clipboard = "unnamedplus" -- also add unnamde for Linux
opt.completeopt = "menu,menuone,noselect"
opt.mouse = "a"
opt.guicursor =
  "n-v-c-sm:block-blinkwait50-blinkon50-blinkoff50,i-ci-ve:ver25-Cursor-blinkon100-blinkoff100,r-cr-o:hor20"
-- opt.cursorline = true
-- opt.cursorcolumn = true

opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current

opt.termguicolors = true

-- General tab settings
opt.tabstop=4       -- number of visual spaces per TAB
opt.softtabstop=4   -- number of spaces in tab when editing
opt.shiftwidth=4    -- number of spaces to use for autoindent
opt.expandtab=true  -- expand tab to spaces so that tabs are spaces
opt.shiftround = true -- Round indent
opt.smartindent = true -- Insert indents automatically

opt.encoding = "utf-8" -- Set default encoding to UTF-8
opt.hidden = true -- Enable background buffers

opt.formatoptions:append{"mM"}

opt.hlsearch = true  -- Highlight found searches
opt.incsearch = true
if vim.fn.has('&inccommand') then -- nvim 0.6 Replacement preview
	opt.inccommand = "split"
end

-- When running macros and regexes on a large file, lazy redraw tells neovim/vim not to draw the screen, which greatly speeds it up, upto 6-7x faster
vim.o.lazyredraw = true

opt.linebreak = true -- Stop words being broken on wrap
opt.showbreak = "↪" -- haracter to show before the lines that have been soft-wrapped
opt.wrap = true
vim.o.whichwrap = vim.o.whichwrap .. "<,>" -- Wrap movement between lines in edit mode with arrows

opt.number = true
opt.relativenumber = true

-- Ignore case in general, but become case-sensitive when uppercase is present
opt.ignorecase = true
opt.smartcase = true

-- Use list mode and customized listchars
opt.list = true 
opt.listchars = {tab="▸ ", extends="❯", precedes="❮", nbsp="␣", trail="·"}


opt.scrolloff = 4 -- Minimum lines to keep above and below cursor when scrolling

opt.showmode = false -- Don't display mode. Lines will do it
opt.signcolumn = "yes:1" -- always show signcolumns

opt.spelllang = {"en_gb"}

-- Persistent Undo
opt.undodir = vim.fn.stdpath("config") .. "/undo"
opt.undofile = true

g.markdown_fenced_languages = {"lua", "vim", "python"}

-- Session Stuff
-- vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"


-- Folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldtext  = [[substitute(getline(v:foldstart),'\\\\t',repeat('\\ ',&tabstop),'g').' 💬 '.trim(getline(v:foldend)) . ' 🔸 (' . (v:foldend - v:foldstart + 1) . ' lines)']]
vim.wo.fillchars = "fold: "
vim.wo.foldnestmax = 2
vim.wo.foldminlines = 2
