set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

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


"================其他设置==============="

"vim设置

syntax enable
colorscheme solarized
set background=dark
set number
set hls
"显示当前行、列
set cursorline  
set cursorcolumn 

set autoindent    " 自动缩进
set modeline      " 底部的模式行

" 设置缩进宽度为 4 个空格
set shiftwidth=4 
set tabstop=4
set softtabstop=4

"语法折叠
set foldmethod=syntax
set foldcolumn=0  " 设置折叠区域的宽度
set foldlevel=100
"用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"以下文件类型，敲 {<回车> 后，自动加入反括号 }
au FileType c,cpp,h,m,java,css,js,nginx,scala,go inoremap  <buffer>  {<CR>{<CR>}<Esc>O

"开启文件类型侦测
filetype on
"根据侦测到的不同类型加载对应的插件
filetype plugin on

"插件设置

set laststatus=2
let g:airline_theme="luna" 
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1

" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
"autocmd VimEnter * NERDTree

" " 按下 F2 调出/隐藏 NERDTree
" map  :silent! NERDTreeToggle

" " 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
" let NERDTreeWinPos="right"

" " 当打开 NERDTree 窗口时，自动显示 Bookmarks
" let NERDTreeShowBookmarks=1

"=========================================="
