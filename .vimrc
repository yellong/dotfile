set nocompatible
set hlsearch
set encoding=utf8

set ruler "开启右下角光标位置显示
set wildmenu "在输入命令时列出匹配项目
set scrolloff=5 "设定光标离窗口上下边界 5 行时窗口自动滚动
set autoread "文件在Vim之外修改过，自动重新读入
set ai "自动缩进
set si "智能缩进
set history=1000
set magic
set showcmd

let g:airline_powerline_fonts = 1

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" 1 tab to 2 space for ruby
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" number line show 
set nu

" input source improve for gui vim
if has("gui_running")
  set noimdisable
  set imi=2
  set ims=2
endif

set noswapfile

"in order to switch between buffers with unsaved change
set hidden

" hightlight col and line
set cursorline
" set cursorcolumn

if has("gui_running")
  set bs=2
  set ruler
  set gfn=Monaco:h16
endif

let mapleader= ","
" EasyMotion_leader_key .

" Bundle Plugin here for Ruby on Rails

" git
Bundle 'tpope/vim-fugitive'

" ruby command for rvm
Bundle 'tpope/vim-rvm'

" quickly move cursor, try ,,w 
Bundle 'Lokaltog/vim-easymotion'

" quickly write HTML, just like zencoding but simple engough
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
let g:sparkupNextMapping= "<c-m>"

" power vim plugin for rails
Bundle 'tpope/vim-rails.git'

" vim rails syntax complete, try ctrl+x ctrl+u
set completefunc=syntaxcomplete#Complete

" quickly comment your code, try ,cc on selected line
Bundle 'vim-scripts/The-NERD-Commenter'

" indent guides
let g:indent_guides_guide_size = 1
Bundle 'nathanaelkane/vim-indent-guides'

" indent guides shortcut
map <silent><F7>  <leader>ig

" file tree like something called IDE
Bundle 'scrooloose/nerdtree'
map <silent><F8> :NERDTree<CR>

" slim template support
Bundle 'slim-template/vim-slim.git'

" coffeescript
Bundle 'kchmck/vim-coffee-script'

" basic dependence
Bundle 'L9'

" quickly search file(s), use ctrl+p, F5 refresh
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" ctrl+o for LRU buffer
map <c-o> :CtrlPBuffer<CR>

filetype plugin indent on     " required! 
syntax on

" sass highlight
Bundle 'JulesWang/css.vim'
Bundle 'cakebaker/scss-syntax.vim'

" support css word with -
set iskeyword+=-

" vim 7.4 backspace fix
set backspace=indent,eol,start

Bundle 'mileszs/ack.vim'
Bundle 'Raimondi/delimitMate'

" ########################################################
" snippets for various programming languages 
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'
" ########################################################
Plugin 'Shougo/neocomplcache.vim'

Bundle 'henrik/vim-yaml-flattener'
Bundle 'bling/vim-airline'
