set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

"自己的一些插件
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

" 以下范例用来支持不同格式的插件安装.
" 请将安装插的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
"Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
"Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
"Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 避免插件名冲突,例如L9已存在,则可以指定
"Plugin 'user/L9', {'name': 'newL9'}

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后

"===================================================================================================

syntax enable                              "颜色显示
set background=dark                        "背景
colorscheme solarized                      "主题
set number                                 "显示行号
set ruler                                  "显示位置指示器
set ignorecase                             "检索时忽略大小写
set autoindent                             "自动缩进
set smartindent                            "智能缩进
set laststatus=2                           "始终显示状态栏
set hls                                    "检索时高亮显示匹配项
set tabstop=4                              "一个制表符的长度
set softtabstop=4                          "一个制表符的长度（可以大于tabstop）
set shiftwidth=4                           "一个缩进的长度
set cursorline                             "高亮显示光标所在行

"NERDTree config
"autocmd vimenter * NERDTree

let g:airline_theme="luna" 
"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1
