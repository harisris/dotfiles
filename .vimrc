
set relativenumber
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Completion Plugins"
"Plugin 'Shougo/neocomplete.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"Folding Plugins"
Plugin 'tmhedberg/SimpylFold'
Plugin 'Konfekt/FastFold'

"Writing prompts"
Plugin 'junegunn/limelight.vim'
"Color Stuff"
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'google/vim-colorscheme-primary'

"Side Trees"
Plugin 'hari-rangarajan/CCTree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'

"Misc"
Plugin 'ivanov/vim-ipython'
Plugin 'etnadji/vim-epub'


Plugin 'hdima/python-syntax'

"Markdown Plugins"
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"Plugin 'valloric/youcompleteme'
Plugin 'Mizuchi/vim-ranger'
Plugin 'parkr/vim-jekyll'
Plugin 'lambdalisue/vim-manpager'
Plugin 'valloric/ListToggle'
Plugin 'ervandew/supertab'


"Plugin 'Shougo/neosnippet.vim'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'scrooloose/syntastic'
"Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'lervag/vimtex'
"Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
"Plugin 'vim-scripts/restore_view.vim'
call vundle#end()
filetype plugin indent on


"""open vimr"""
nnoremap <leader>v :e ~/.vimrc<CR>
nnoremap <leader>V :tabnew ~/.vimrc<CR>

"""""""""""""""Relative Number Toggle"""""""""""""""
function! NumberToggle()
	if(&relativenumber == 0)
		set number
	else
		set relativenumber
	endif
endfunc

"nnoremap <C-n> :call NumberToggle()<cr>
":au FocusLost * :set number
":au FocusGained * :set relativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""Tagbar""""""""""

nmap <F8> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"shift between buffer without saving
set hidden
set backspace=indent,eol,start


"Paste Clipboard"
set clipboard=unnamed

"Markdown stuff
let g:vim_markdown_math = 1

"split navigation remapping
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

set splitbelow
set splitright

let g:tex_flavor = 'latex'
let python_highlight_all = 1



"folding
"set foldmethod=indent
"set foldcolumn=3
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
"simpylfold

let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0

autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
"""""""""""""""""NERDTree"""""""""""""""""""""
"File Highlighting"
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
"""""""""""""""
"Close vim if only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"autostart NERDTree if no file
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif




"for UltiSnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"using python3 for youcompletme
let g:ycm_path_to_python_interpreter = '/usr/bin/python3'
"neocomplete start
let g:neocomplete#enable_at_startup = 1

autocmd CompleteDone * pclose


""""""""""""""""""""""""""EYECANDY""""""""""""""""""""""""""""
"colorscheme"
colorscheme rt_goo

syntax enable
syntax on
"set t_Co=256
"set background=dark
"colorscheme primary




"syntax on
"powerline stuff
set laststatus=2
set showtabline=2
set noshowmode

"airline"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 0

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

"Vim background color"
"if &term =~ '256color'
"	set t_ut=

