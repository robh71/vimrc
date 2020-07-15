set nocompatible

" disable arrow keys
noremap <up> <nop>
inoremap <up> <nop>
noremap <down> <nop>
inoremap <down> <nop>
noremap <left> <nop>
inoremap <left> <nop>
noremap <right> <nop>
inoremap <right> <nop>

" hybrid line number mode
set number relativenumber

" spaces instead of tabs
:set tabstop=4 shiftwidth=4 expandtab

" show invisibles tweaks from http://vimcasts.org/episodes/show-invisibles/
" shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" use custom symbols for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set listchars+=space:•
" invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugins')

" Declare the list of plugins.
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'ambv/black'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

