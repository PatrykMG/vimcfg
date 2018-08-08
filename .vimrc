" ========================================================
"   Vim Configuration file created by Patryk Gawroński
"
"   License:        GNU General Public License v3.0
"   e-mail:         gawronski1.6@gmail.com
" ========================================================

set t_Co=256
syntax on
set background=dark
set statusline=2
set cinkeys=0{,0},0),:,!^F,o,O,e
highlight ColorColumn ctermbg=gray
set colorcolumn=80 
"au FocusLost * :set number
"au FocusGained * :set relativenumber
set nu

highlight Normal ctermbg=Black
syntax enable
"#highlight iCursor guifg=red guibg=steelblue
"#set guicursor=n-v-c:block-Cursor
"#set guicursor+=i:ver100-iCursor
"#set guicursor+=n-v-c:blinkon0
"#set guicursor+=i:blinkwait10

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=indent,eol,start
set guifont=Hack\ 9
"colorscheme darkblack
"colorscheme darkbone
colorscheme elflord

set laststatus=2


" -------------------------------------------------------
" 	Vundle Setup
" -------------------------------------------------------


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here') 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'hari-rangarajan/CCTree'
Plugin 'git://github.com/majutsushi/tagbar'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'hari-rangarajan/CCTree'
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'https://github.com/vim-syntastic/syntastic.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/tell-k/vim-autopep8.git'

Plugin 'https://github.com/alvan/vim-closetag.git'

Plugin 'https://github.com/lepture/vim-jinja.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ----------------------------------------------------------------
" Vim-airline config section
" -----------------------------------------------------------------

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='powerlineish'



if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif






set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"set statusline+=col\ %c


" -------------------------------------------------------------------------
"  CCTree extension
" -------------------------------------------------------------------------

let g:CCTreeScopeDb = "cscope.db"
let g:CCTreeRecursiveDepth = 5
let g:CCTreeMinVisibleDepth = 5
let g:CCTreeOrientation = "leftabove"



let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 1
let g:syntastic_mode_map = {'mode':'passive'}

" -------------------------------------------------------------------------
" Vim YouComplete me config section
" -------------------------------------------------------------------------

let g:ycm_min_num_of_chars_for_completion = 1      " default YCM value is 2
let g:ycm_min_num_indentifier_candidate_chars = 0  " default YCM value
let g:ycm_auto_trigger = 1			   " default YCM value
let g:ycm_show_diagnostics_ui = 0		   " default YCM value is 1 this turns off YCM syntax checker  
let g:ycm_error_symbol = '>>'			   " defualt YCM value
let g:ycm_warning_symbol = '>>'			   " default YCM value
let g:ycm_enable_diagnostic_signs = 1 		   " default YCM value
let g:ycm_enable_diagnostic_highlighting = 1 	   " default YCM value
let g:ycm_echo_current_diagnostic = 1 		   " default YCM value
let g:ycm_complete_in_comments = 1 		   " defualt YCM value is 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1 " 
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.','re![_a-zA-z0-9]'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:ctrlp_map = '<C-p>'
let g:ctrlp_map = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

autocmd FileType python noremap <buffer> <F9> :call Autopep8()<CR>
let g:autopep8_max_line_length=100
let g:autopep8_diff_type='vertical'


" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
let g:closetag_emptyTags_caseSensitive = 1

nnoremap <C-p> : CtrlP<CR>

" -----------------------------------------------------------------------------------------------
" doxygen config
" -----------------------------------------------------------------------------------------------

"let g:load_doxygen_syntax=1
" set spell
" set spelllang=en
 
" -----------------------------------------------------------------------------------------------
" Custom key mapping 
" -----------------------------------------------------------------------------------------------


nnoremap bn :bn <CR>
nnoremap bp :bp <CR>
nnoremap bc :bd <CR>
nnoremap bd :bd <CR>
nnoremap tt :NERDTreeToggle <CR>
nmap <F8> :TagbarToggle<CR>


nnoremap tn :tabn <CR>
nnoremap tp :tabp <CR>

"nmap <silent> <A-Up> :wincmd k<CR>
"nmap <silent> <A-Down> :wincmd j<CR>
"nmap <silent> <A-Left> :wincmd h<CR>
"nmap <silent> <A-Right> :wincmd l<CR>options.permit_passwords


"--------------------------------------------------------------------------
"  Vim functions
"--------------------------------------------------------------------------

fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map f :call ShowFuncName() <CR>

