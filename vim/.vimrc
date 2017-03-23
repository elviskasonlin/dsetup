" /////////////////////
" El's Custom Vim Setup
" /////////////////////

" Main essentials setup
syntax on

set tabstop=2
set shiftwidth=2

set t_Co=256

let mapleader = ","

" ////////////////////
" /////OWN TWEAKS/////
" ////////////////////

" Sets vim in no compatibility mode
set nocp

" Enable mouse
set mouse=a

" Remapping nav keys j & k
nnoremap j k
nnoremap k j

" Remapping ; & : for : and :! respectively
nnoremap ; :
nnoremap : :!

" Showing line numbers
set number

" Vim Search improvements
set incsearch "Sets incremental search (or in other words, search as you type)
set hlsearch  "Hightlight items found in search
set ic "Ignores case

" Move cursor to one past last character in normal mode
set virtualedit=onemore

" Set automatic indenting, C-style
set cindent

" Buffer tweaks
set switchbuf=usetab
"nnoremap [ :sbnext<CR>
"nnoremap ] :sbprevious<CR>
nnoremap <leader>l :ls<CR>
nnoremap [ :bn<CR>
nnoremap ] :bn<CR>
nnoremap <leader>t :enew<CR> "\t to create new buffer
nnoremap <leader>xt :bp <AR> bd #<CR> "\t to quit and go to prev buffer


" Window tweaks
nnoremap <leader>we :e
nnoremap <leader>swh :topleft vnew<CR>
nnoremap <leader>swl :botright vnew<CR>
nnoremap <leader>swj :topleft new<CR>
nnoremap <leader>swk :botright new<CR>



" /////////////////////
" /////VIM PLUGINS/////
" /////////////////////

" VIM PLUG SET UP
call plug#begin('~/.vim/vimplugins')

" /////////THEMES////////
" Thematic Plugin. To change themes on demand
Plug 'https://github.com/reedes/vim-thematic'
" Airline-themes
Plug 'vim-airline/vim-airline-themes'

" /////////TWEAKS///////
" Super Tab
Plug 'ervandew/supertab'
" EasyMotion (Easy nav movement)
Plug 'https://github.com/easymotion/vim-easymotion'
" Nerd Commenter (Easy commenting)
Plug 'scrooloose/nerdcommenter'

" ////////NEW ITEMS//////
" Git interface
Plug 'tpope/vim-fugitive'
" Vim Airline
Plug 'vim-airline/vim-airline'
" Vim Minimap
Plug 'https://github.com/severin-lemaignan/vim-minimap'

" ////////MAJOR ADD-ONS///////
" Syntastic (Linting)
Plug 'https://github.com/vim-syntastic/syntastic'
" YouCompleteMe (Auto completion engine)
Plug 'Valloric/YouCompleteMe'

" Plug set-up end
call plug#end()

" ///////////////////////////////////
" /////VIM PLUGIN CONFIGURATIONS/////
" ///////////////////////////////////

" Thematic
let g:thematic#themes = {
\	'Default' :{'colorscheme': 'darth',
\             'airline-theme': 'sol',
\						  'ruler': 1,
\    				  'laststatus': 2,
\						 },
\ }

let g:thematic#theme_name = 'Default'


" Airline
let g:airline#extensions#tabline#enabled = 1
"let laststatus=2
let g:airline_powerline_fonts = 1

" Vim Minimap
let g:minimap_show='<leader>mms'
let g:minimap_update='<leader>mmu'
let g:minimap_close='<leader>mmc'
let g:minimap_toggle='<leader>mmt'

" Syntastic
nnoremap <leader>[ :lnext
nnoremap <leader>] :previous
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:yntastic_enable_balloons = 1
let g:syntastic_auto_jump = 2
let g:syntastic_loc_list_height = 6
