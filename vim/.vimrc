" ----------------------------------------------------------
" -- Abhishek's vimrc
" -- 
" -- Created: Apr 2018
" ----------------------------------------------------------
"
set encoding=utf-8
syntax enable
"set nu

filetype indent plugin on
set modeline

" see https://stackoverflow.com/questions/3316244/set-gvim-font-in-vimrc-file
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" VIM Plug

" Auto-install
" see https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" colorize rgb strings
Plug 'lilydjwg/colorizer'

" filesystem tree view
Plug 'scrooloose/nerdtree'

" git plugins
Plug 'tpope/vim-fugitive'

" colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jonathanfilip/vim-lucius'

" syntax checking
Plug 'scrooloose/syntastic'

" code completion
" Plug 'valloric/youcompleteme'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" finder
Plug 'ctrlpvim/ctrlp.vim'

" Languages
"
" Javascript
Plug 'pangloss/vim-javascript'

" Markdown
Plug 'plasticboy/vim-markdown'

call plug#end()

" Set the colorscheme

if has("gui_running")
	colorscheme ron
else
	colorscheme ron
endif

