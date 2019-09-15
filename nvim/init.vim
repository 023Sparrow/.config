"设置leader键
let mapleader = ","
set termguicolors "设置真彩
set nu
set relativenumber "相对行号
set hlsearch
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set t_Co=256
set whichwrap+=<,>,h,l
set ttimeoutlen=0
set backspace=indent,eol,start
set mouse=a
filetype on
syntax on
set laststatus=2        "始终显示状态栏
set wildmenu             " vim 自身命名行模式智能补全
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在 vim 之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030



call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'liuchengxu/eleline.vim' 
Plug 'Yggdroot/indentLine'
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'

"python
Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
" LanguageServer client for NeoVim.
Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ }

call plug#end()




colorscheme gruvbox
nnoremap <leader>b :bd<cr>
"编辑vimrc
nnoremap <leader>e :edit $MYVIMRC<cr>
""重新加载vimrc
nnoremap <leader>s :source $MYVIMRC<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>
nnoremap <leader>q :q<cr>
" 安装、更新、删除插件
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>
"搜索后按zz清除高亮
noremap <plug>(slash-after) zz
"补全设置
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:ncm2_jedi#python_version = 3

"eleline状态栏
""启用powerline字体
let g:eleline_powerline_fonts = 1

"彩色括号
let g:rbpt_colorpairs = [
    \ ['brown', 'RoyalBlue3'],
    \ ['Darkblue', 'SeaGreen3'],
    \ ['darkgray', 'DarkOrchid3'],
    \ ['darkgreen', 'firebrick3'],
    \ ['darkcyan', 'RoyalBlue3'],
    \ ['darkred', 'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown', 'firebrick3'],
    \ ['gray', 'RoyalBlue3'],
    \ ['black', 'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue', 'firebrick3'],
    \ ['darkgreen', 'RoyalBlue3'],
    \ ['darkcyan', 'SeaGreen3'],
    \ ['darkred', 'DarkOrchid3'],
    \ ['red', 'firebrick3'],
    \ ]
let g:rbpt_max = 8
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons

"缩进线
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDToggleCheckAllLines = 1

