" --- Init Plugged --------------------------------- "

set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" --- Plugins -------------------------------------- "

" Active Plugins
" Folding
Plug 'tmhedberg/SimpylFold' 							    "Python Folding
Plug 'Konfekt/FastFold' 							   "General Folding
Plug 'kopischke/vim-stay' 					 		     "Restore Views

" Eyecandy
Plug 'mhinz/vim-startify' 					  		      "Start Screen
Plug 'flazz/vim-colorschemes' 								    "Themes
Plug 'vim-airline/vim-airline' 							        "Bottom Bar
Plug 'vim-airline/vim-airline-themes' 						"Themes for Airline
Plug 'Yggdroot/indentLine' 			     "Thin vertical lines at each indentation level

" Functionality
Plug 'ervandew/supertab'
Plug 'valloric/ListToggle'     			   "Toggling display of quickfix and location lists
Plug 'w0rp/ale' 								   "Syntax Checking
Plug 'scrooloose/nerdcommenter' 						 "Commenting Helper
Plug 'norcalli/nvim-colorizer.lua' 			  "Highlight color codes with colored boxes
Plug 'scrooloose/nerdtree' 						     "Toggle directory tree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 				      "Fuzzy Search
Plug 'godlygeek/tabular' 					 "Allign text between char. Eg. ':'
Plug 'haya14busa/incsearch.vim' 					 "Incremental Search Helper
Plug 'junegunn/vim-emoji' 						"Emoji functionality in Vim
Plug 'rhysd/accelerated-jk' 							"As the name says..

" Class/Function Tags
Plug 'majutsushi/tagbar'

" Folds + Headers
Plug 'vim-scripts/EightHeader' 						     "Form heading patterns

" Miscellaneous
Plug 'lambdalisue/vim-manpager'
Plug 'plasticboy/vim-markdown' 						 "Keep after tabular plugin
Plug 'ivanov/vim-ipython'

call plug#end()

" Standby Plugins
"Plug 'python-mode/python-mode'
"Plug 'jeffkreeftmeijer/vim-numbertoggle' 			   "Relative numbers only in i-mode

"Completion Plugs"
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'shougo/deoplete.nvim', { 'do': ':updateremoteplugins' }
"Plug 'davidhalter/jedi-vim'
"Plug 'zchee/deoplete-jedi'
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'

"Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }

"Plug 'hdima/python-syntax'
"Plug 'scrooloose/syntastic' "Syntax Checker

"Writing prompts"
"Plug 'junegunn/limelight.vim'
"Plug 'scrooloose/syntastic'
"Plug 'kien/ctrlp.vim'
"Plug 'easymotion/vim-easymotion'

" RIP Plugins
"
"Plug 'parkr/vim-jekyll'
"Plug 'vimwiki/vimwiki' "Diary
"Plug 'xuhdev/vim-latex-live-preview'
"Plug 'vim-scripts/restore_view.vim'
"Plug 'Mizuchi/vim-ranger'
"Plug 'itchyny/calendar.vim'

" --- Mappings ------------------------------------- "

"Use semicolon instead of colon. Removes the need for shift.
nmap ; :
noremap ;; ;

let mapleader=","
nnoremap <leader>v :e ~/.vimrc<CR>
nnoremap <leader>V :tabnew ~/.vimrc<CR>

" Motion
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" Incremental Search
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
nmap zuz <Plug>(FastFoldUpdate)
nnoremap <Space> za
vnoremap <Space> za

" Linting
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Tagbar
nmap <C-q> :TagbarToggle<CR>

" --- Configuration -------------------------------- "

" Sanity in Vim
set mouse=a 								      "Use mouse everywhere
set clipboard=unnamed 							  "Use systemwide clipboard
set splitbelow
set splitright
set relativenumber
set hidden
set termguicolors 						     "We live in 2020s now. Come on
set lazyredraw
set showmatch 								   "Show brackets for a sec 
syntax enable
syntax on
lua require'colorizer'.setup()

" Search
set hlsearch
let g:incsearch#auto_nohlsearch = 1

" SuperTab
let g:SuperTabDefaultCompletionType        = "<c-n>" 				 "Navigate from top
let g:SuperTabContextDefaultCompletionType = "<c-n>" 		       "Navigate from top (Context)
let g:SuperTabCrMapping                    = 1
let g:SuperTabLongestHighlight             = 1
"let g:SuperTabClosePreviewOnPopupClose    = 1

" Markdown stuff
let g:vim_markdown_math          = 1
let g:tex_flavor                 = 'latex'

" NerdCommenter
let g:NERDSpaceDelims            = 1 					  " Spaces after delimiters
let g:NERDCompactSexyComs        = 1 			   " Compact syntax for multi-line comments
let g:NERDDefaultAlign           = 'left' 		       " Align line-wise comment delimiters
let g:NERDCommentEmptyLines      = 1 		       " Allow commenting and inverting empty lines
let g:NERDTrimTrailingWhitespace = 1 		" Trimming of trailing whitespace when uncommenting

" Linting
let g:ale_sign_error = emoji#for('cry')
let g:ale_sign_warning = emoji#for('grey_question')
let g:ale_sign_column_always = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign

function! LinterStatus() abort
    let l:counts         = ale#statusline#Count(bufnr(''))
    let l:all_errors     = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors
    return l:counts.total == 0 ? 'OK' : printf('%dW %dE', all_non_errors, all_errors)
endfunction

set statusline=%{LinterStatus()}

" Folding

set viewoptions=cursor,folds,slash,unix "vim-stay
let g:fastfold_savehook=1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1

" function! NeatFoldText() "{{{2
"   let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
"   let lines_count = v:foldend - v:foldstart + 1
"   let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
"   let foldchar = matchstr(&fillchars, 'fold:\zs.')
"   let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
"   let foldtextend = lines_count_text . repeat(foldchar, 8)
"   let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
"   return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
" endfunction
" set foldtext=NeatFoldText()
" " }}}2

function! CustomFoldText(delim)
  "get first non-blank line
  let fs = nextnonblank(v:foldstart)
  if fs > v:foldend
      let line = getline(v:foldstart)
  else
      let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
  endif
  " indent foldtext corresponding to foldlevel
  let indent = repeat(' ',shiftwidth())
  let foldLevelStr = repeat(indent, v:foldlevel-1)
  let foldLineHead = substitute(line, '^\s*', foldLevelStr, '')
  " size foldtext according to window width
  let w = winwidth(0) - &foldcolumn - (&number ? &numberwidth : 0) - (&l:signcolumn is# 'yes' ? 2 : 0)
  let foldSize = 1 + v:foldend - v:foldstart
  " estimate fold length
  let foldSizeStr = " " . foldSize . " lines "
  let lineCount = line("$")
  if has("float")
    try
      let foldPercentage = " " . printf("%4s", printf("%.1f", (foldSize*1.0)/lineCount*100)) . "%] "
    catch /^Vim\%((\a\+)\)\=:E806/	" E806: Using Float as String
      let foldPercentage = printf("[of %d lines] ", lineCount)
    endtry
  endif
  " build up foldtext
  let foldLineTail = foldSizeStr . foldPercentage
  let lengthTail = strwidth(foldLineTail)
  let lengthHead = w - (lengthTail + indent)
  if strwidth(foldLineHead) > lengthHead
    let foldLineHead = strpart(foldLineHead, 0, lengthHead-2) . '..'
  endif
  let lengthMiddle = w - strwidth(foldLineHead.foldLineTail)
  " truncate foldtext according to window width
  let expansionString = repeat(a:delim, lengthMiddle)
  let foldLine = foldLineHead . expansionString . foldLineTail
  return foldLine
endfunction

set foldtext=CustomFoldText('\ ')

" Python Folding
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0

" NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Vim Wiki
"run multiple wikis
let g:vimwiki_list = [{'path': '~/Documents/VimWiki/personal.wiki'},
		      \{'path': '~/Documents/VimWiki/tech.wiki'}
		      \]

au BufRead,BufNewFile *.wiki set filetype=vimwiki
:autocmd FileType vimwiki map d :VimwikiMakeDiaryNote

function! ToggleCalendar()
  execute ":Calendar -view=year -split=vertical -width=27"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction
:autocmd FileType vimwiki map c :call ToggleCalendar()

" UltiSnips"
let g:UltiSnipsExpandTrigger             = "<tab>"
let g:UltiSnipsJumpForwardTrigger        = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger       = "<c-z>"
let g:UltiSnipsEditSplit                 = "vertical"

" Eyecandy
colorscheme rt_goo_modified
set noshowmode

" Airline"
let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='transparent'
let g:airline_powerline_fonts=0
set laststatus=2

" --- Crossplatform configuration ------------------ "

"set ttyfast "Maybe needed for vim.
"set notimeout
"set ttimeout
"set ttimeoutlen=10
