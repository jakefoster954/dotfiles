" https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/

"Test Encoding
set encoding=utf8

" Enable Syntax Highlighting
syntax on

" Enable line numbers
set relativenumber
set wrap

" Set tab to 4 spaces
:set expandtab tabstop=4 softtabstop=4 shiftwidth=4 shiftround
:set backspace =indent,eol,start

" Show floating spaces
set list lcs=trail:·,tab:»·

" Searching commands
set hlsearch
set smartcase

" User Interface
:set ruler

" Disable swap files
:set noswapfile

" Set line limit to 120
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%121v', 100)

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" VimPlug
call plug#begin('~/.vim/plugged')

Plug 'valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Set box for YouCompleteMe to a nice color
:hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
:hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
