"##########alan vim set ####################
" ----------------------------- Vundle Start -----------------------------
set nocompatible
filetype off
set rtp+=/home/Build/lzhou/.vim/bundle/Vundle.vim/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'scrooloose/nerdtree'
Plugin 'preservim/nerdtree'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'trunkMode/taglist.vim'
call vundle#end()
filetype plugin indent on
" ----------------------------- Vundle End ------------------------------

"auto indent and C format
set autoindent
set cindent

"insert space instead of tab
set ts=4
set expandtab

"set shiftwidth=4
set shiftwidth=4
set softtabstop=4

"show line numer"
set number

"show space at end of line if it exist"
highlight WhitespaceEOL ctermbg=grey guibg=red
match WhitespaceEOL /\s\+$/

"##########alan vim set ####################
""auto indent
set autoindent

set ts=4
set expandtab
"set shiftwidth=4
set shiftwidth=4
"set softtabstop=4
set softtabstop=4

""show line numer"
set number

set hlsearch
"show space at end of line if it exist"
highlight WhitespaceEOL ctermbg=grey guibg=red
match WhitespaceEOL /\s\+$/

"2-always show status line
set laststatus=2
"F- full path f-relative path l- line number
set statusline=%f:%l,%y

"############## hot key ###############
" ---- NERDTree hotkey map ----
"open NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"TlistToggle
nnoremap <C-y> :TlistToggle<CR>
"TlistClose
"nnoremap <silent> <F8> :TlistToggle<CR>
"
"------ cscope ------------------
"Refer: https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
"map key under normal mode
"You can insert the result of a Vim expression in insert mode using the <C-R>=command
"nnoremap <C-/>g :cs find c <C-R>=expand("<cword>")<CR><CR>
"
" The following maps all invoke one of the following cscope search types:
"
"   's'   symbol: find all references to the token under cursor
"   'g'   global: find global definition(s) of the token under cursor
"   'c'   calls:  find all calls to the function name under cursor
"   't'   text:   find all instances of the text under cursor
"   'e'   egrep:  egrep search for the word under cursor
"   'f'   file:   open the filename under cursor
"   'i'   includes: find files that include the filename under cursor
"   'd'   called: find functions that function under cursor calls
"
nnoremap cs :cs find s <C-R>=expand('<cword>')<CR><CR>
nnoremap cg :cs find g <C-R>=expand('<cword>')<CR><CR>
nnoremap cc :cs find c <C-R>=expand('<cword>')<CR><CR>
nnoremap ct :cs find t <C-R>=expand('<cword>')<CR><CR>
nnoremap ce :cs find e <C-R>=expand('<cword>')<CR><CR>
nnoremap cf :cs find f <C-R>=expand('<cword>')<CR><CR>
nnoremap cd :cs find d <C-R>=expand('<cword>')<CR><CR>
