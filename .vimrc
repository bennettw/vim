" basic params
filetype on " Automatically detect file types.
filetype plugin on
"filetype indent on  "annoying as hell in handlebars templates
syntax enable
set nocompatible " We don't want vi compatibility.
set background=dark 
set ts=2
set shiftwidth=2
set expandtab
set number     " show line numbers
set nowrap     " no line wrapping
set ignorecase " case insensitive search
set smartcase  " case insensitive search
set hlsearch
set incsearch  " incremental searching
set autoindent
set cursorline
set showtabline=2 "always show tab line

" not sure if want these
autocmd FileType *      set formatoptions=tcql nocindent comments&
autocmd FileType c,cpp  set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://

" mappings
let mapleader = ","
map <C-h> :bp<CR>
map <C-l> :bn<CR>
imap <Leader><Leader> <Esc>:w<CR>
map <Leader><Leader> :w<CR>
map <Leader>v :e ~/.vimrc<CR>
nmap <C-j> 20j
nmap <C-k> 20k
"map <Leader>t :tabnew<Space>
map <Leader>v :tabnew ~/.vimrc<CR>
map <Leader>x :bd<CR>
map <Leader>V :so ~/.vimrc<CR>:tabclose<CR>
map <F2> :bd<CR>
map <F3> :NERDTree<CR>
map <Leader>f <C-w><C-w>
nmap oo o<CR>
nmap OO O<CR><Esc>ki
imap <Leader><Tab> <C-p>
imap <C-BS> <C-w>  " ctrl backspace to delete word
nmap <C-BS> daw
" terminal colors
set t_Co=256

" ruby
imap <c-l> <space>=><space>
nnoremap <CR> :nohlsearch<CR>

" dont use arrow keys
map <Left> <nop>
map <Right> <nop>
map <Up> <nop>
map <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>
imap <Up> <nop>
imap <Down> <nop>


" pathogen
call pathogen#infect()
call pathogen#helptags()

" command-t
"map <leader>f :CommandTFlush<cr>\|:CommandT<cr>

"fix weird symbols in putty
let g:NERDTreeDirArrows=0

" vim-javascript
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

color wombat256bw

"coffee script folding
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent shiftwidth=2 expandtab nofoldenable

" gvim settings
set guioptions-=T
set guioptions-=m
set guioptions+=a
