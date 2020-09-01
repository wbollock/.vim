"##### VIMRC #####"

"# Bug in windows terminal that starts in replace mode fix"
nnoremap R <Esc>

"########### Plugins ###########"

" install vim-plug
 if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
       \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
         autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
         endif

" enable plugins (:PlugInstall)
call plug#begin('~/.vim/plugged')

" Theme
Plug 'junegunn/seoul256.vim'

" Git Plugin - :Git/:G
Plug 'tpope/vim-fugitive'

call plug#end()

"########### Plugins End ###########"

"########### Plugin Configuration ###########"

" seoul256 settings
set background=dark

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"########### Plugin Configuration End ###########"



"########### General Configuration ###########"

" enter the current millenium, technically useless
set nocompatible

" enable syntax and plugins
syntax enable
"filetype plugin on

" for helping with YAML, idk if i like it yet
autocmd FileType yaml setlocal cursorcolumn

" allows copy and pasting formatting, and line numbers
:set paste
:set nu

"########### General Configuration End ###########"




"########### Old Plugins ###########"
" disccarded plugins that might be cool

" Puts text in the center
"Plug 'junegunn/goyo.vim'

" Highlights text as it goes
"Plug 'junegunn/limelight.vim'

" Syntax Plugin - couldnt figure out how it works
"Plug 'scrooloose/syntastic'

" Ansible Syntax - failed on every none-ansible host, syntax wasn't that great
"Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }

"########### Old Plugins End ###########"
