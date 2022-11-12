call plug#begin('~/.local/share/nvim/plugged')
" Add ons
Plug 'itchyny/lightline.vim'                            " Light line
Plug 'scrooloose/nerdtree'  	                        " Classic nerdtree
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}         " Ranger
Plug 'altercation/vim-colors-solarized'  	            " Colorscheme
" Ease of use
Plug 'tpope/vim-surround'                               " Surroundings package
Plug 'jiangmiao/auto-pairs' 	                        " Auto quote completion
Plug 'scrooloose/nerdcommenter'	                        " Commenter
Plug 'sbdchd/neoformat'		                            " Code formatter
Plug 'zchee/deoplete-jedi'  	                        " Auto completion
Plug 'mg979/vim-visual-multi', {'branch': 'master'}     " Multiple cursors
"Plug 'davidhalter/jedi-vim' 	                        " Jump to code definitions
" Highlighting
Plug 'hashivim/vim-terraform'                           " Highlighting for terraform filetypes
Plug 'JuliaEditorSupport/julia-vim'                     " Highlighting for Julia
call plug#end()
