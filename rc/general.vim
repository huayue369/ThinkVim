set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
set splitbelow
set cursorline          "高亮显示光标所在行
syntax on
set bsdir=buffer        " 设定文件浏览器目录为当前目录
set encoding=utf-8      " 设置编码
set nocompatible
set laststatus=2
set showtabline=2
set statusline=-        " hide file name in statusline
"set fillchars=stl:-     " fill active window's statusline with -
"set fillchars+=stlnc:-  " also fill inactive windows
set fillchars+=vert:\|  " add a bar for vertical splits
set clipboard=unnamed
let g:clipboard = {
  \ 'name': 'pbcopy',
  \ 'copy': {
  \    '+': 'pbcopy',
  \    '*': 'pbcopy',
  \  },
  \ 'paste': {
  \    '+': 'pbpaste',
  \    '*': 'pbpaste',
  \ },
  \ 'cache_enabled': 0,
  \ }
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set number               "显示行号
set timeout ttimeout
set timeoutlen=500 ttimeoutlen=0
set updatetime=100
set relativenumber
set backspace=2
set backspace=indent,eol,start
set ic                   "忽略大小写查找
set tabstop=4            " tab宽度
set cindent shiftwidth=4
set autoindent shiftwidth=4
set expandtab
set foldmethod=indent    " set 折叠 
set foldlevelstart=99    " 打开文件默认不折叠
set hidden
set shortmess=aFc
set completeopt =longest,menu
set completeopt-=preview
filetype plugin indent on     " required!
"set lcs+=trail:.                                                       "样式一
"set listchars=tab:\¦\                                                 "样式二
"set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→,eol:↲,nbsp:␣   "样式三
"set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·              "样式四
set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→                 "样式五
" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
for f in split(glob('~/.config/nvim/rc/ftplugin/*.vim'), '\n')
    exe 'source' f
endfor

