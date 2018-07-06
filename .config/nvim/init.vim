
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Plugins~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
set nocompatible
"filetype off  
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/EightHeader'

"Completion Plugs"
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'

"Folding Plugs"
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'

"Writing prompts"
"Plug 'junegunn/limelight.vim'
"Plug 'scrooloose/syntastic'

"Color Stuff"
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'google/vim-colorscheme-primary'
"Plug 'python-mode/python-mode'
Plug 'junegunn/vim-emoji'
Plug 'majutsushi/tagbar'

"Misc"
Plug 'ivanov/vim-ipython'
"Plug 'etnadji/vim-epub'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
"Plug 'hdima/python-syntax'

"Markdown Plugs"
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

"Plug 'valloric/youcompleteme'
Plug 'Mizuchi/vim-ranger'
Plug 'parkr/vim-jekyll'
Plug 'lambdalisue/vim-manpager'
Plug 'valloric/ListToggle'
Plug 'ervandew/supertab'



Plug 'w0rp/ale'
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
"Plug 'scrooloose/syntastic'
"Plug 'xuhdev/vim-latex-live-preview'
Plug 'kien/ctrlp.vim'
"Plug 'lervag/vimtex'
"Plug 'LaTeX-Suite-aka-Vim-LaTeX'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
"Plug 'vim-scripts/restore_view.vim'
"Plug 'kopischke/vim-stay'
call plug#end()

"call vundle#end()
"filetype plugin indent on



"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Tweaks~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
let mapleader=","
set relativenumber
"set cursorline
set ttyfast
"set notimeout
"set ttimeout
"set ttimeoutlen=10

"Open vimrc"
nnoremap <leader>v :e ~/.vimrc<CR>
nnoremap <leader>V :tabnew ~/.vimrc<CR>
"Paste Clipboard"
set clipboard=unnamed
"shift between buffer without saving
set hidden
set backspace=indent,eol,start

" redraw only when we need to.
"set lazyredraw          
set showmatch

"Search"
set incsearch           " search as characters are entered
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


"set hlsearch            " highlight matches
" turn off search highlight
"nnoremap <leader><space> :nohlsearch<CR>
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Completion~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
set lazyredraw
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#enable_cache = 1
"let g:deoplete#sources = {}
"let g:deoplete#sources.python = ['ultisnips', 'jedi']
let g:deoplete#max_list = 50 
let g:jedi#show_call_signatures = "0"
let g:jedi#popup_on_dot = 0

"autocmd FileType python call jedi#configure_call_signatures()
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:SuperTabContextDefaultCompletionType = "<c-n>"
"let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabCrMapping=1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabLongestHighlight = 1

"Markdown stuff
let g:vim_markdown_math = 1

"split navigation remapping
"nnoremap <C-j> <C-W><C-J>
"nnoremap <C-k> <C-W><C-K>
"nnoremap <C-l> <C-W><C-L>
"nnoremap <C-h> <C-W><C-H>

set splitbelow
set splitright

let g:tex_flavor = 'latex'
let python_highlight_all = 1

""""""""""""""""""""""Comment"""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1



""""""""""""""""""""""Linting"""""""""""""""""""""""
let g:ale_sign_error = emoji#for('cry')
let g:ale_sign_warning = emoji#for('grey_question')
let g:ale_sign_column_always = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
highlight clear ALEErrorSign
highlight clear ALEWarningSign
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Folding~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
"set foldmethod=indent
"set foldcolumn=3
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview
"simpylfold

let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0

"autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
"autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<


nmap zuz <Plug>(FastFoldUpdate)
function! NeatFoldText() "{{{2
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()
" }}}2
nnoremap <Space> za
vnoremap <Space> za

let g:fastfold_savehook = 1
set viewoptions=cursor,folds,slash,unix

""""""""""""""""""""""""""""NERDTree"""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1



""""""Tagbar""""""
nmap <C-q> :TagbarToggle<CR>


"""""""""Python"""""""""
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>




"for UltiSnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


"autocmd CompleteDone * pclose

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Eyecandy~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "

"colorscheme"
colorscheme rt_goo_modified
syntax enable
syntax on
set noshowmode

"airline"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 0
set laststatus=2




function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline=%{LinterStatus()}

"""""""""""""""""""""""Misc Tweaks""""""""""""""""""""""""""
"""copy-paste"""
vnoremap <C-x> "+x
vnoremap <S-Del> "+x
vnoremap <C-c> "+y
vnoremap <C-Insert> "+y
map <C-v> "+gP
map <S-Insert> "+gP
cmap <C-v> <C-R>+
cmap<S-Insert> <C-R>+


