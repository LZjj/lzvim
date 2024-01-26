"关闭与VI的兼容
set nocompatible

"显示行号
set number

filetype on

set history=1000

"设置背景为灰色
set background=dark

"打开语法高亮显示, syntax off; syntax enable
syntax on

"自动对齐，使用上一行的对齐方式
set autoindent

"智能对齐方式
set smartindent

"tab占空格数
set tabstop=4

"缩进识别
set shiftwidth=4

"tab全部转换为space
set expandtab

"设置匹配模式，类似当输入一个左括号时匹配上相应的那个右括号
set showmatch

"搜索自动定位
set incsearch

"所有模式下都接收鼠标事件
set mouse=a

"高亮要查找的所有词
set hlsearch

"高亮光标所在列
"set cursorcolumn

"高亮光标所在行
set cursorline

"与smartcase配合，有大写时全匹配，全小写时忽略大小写
set ignorecase

"忽略查找大小写
set smartcase

set updatetime=100

"粘贴后缩进不混乱, ruler必须在paste后，不然功能异常
set paste

"在编辑过程中，在右下角显示光标位置的状态行
set ruler

"设置显示tab, 经常有粘贴来的代码里面是tab,看上去没问题，其实不行
set list

"设置tab和行尾空格的格式,行尾空格会显示“-”
set listchars=tab:>-,trail:

"Mac下不用再双引号+y，而是直接复制到系统粘贴板，linux ssh vim下不好用,最常用yaw复制一个单词到系统粘贴板
set clipboard=unnamed

"添加wildmenu，使用tab切换find的文件
set wildmenu

"添加根据缩进行折叠设置
set foldmethod=indent

"缩进程度
set foldlevel=10

"选择主题
:colorscheme desert

"find 需要限制小路径，不能用src，用的少;
"gf需要src根路径，小路径不行，用的多;
"grep 使用自定义命令，不参与path制订
"综上所述，只加根src路径
set path+=~/code2303_4/src/


"设置不同文件不同缩进
autocmd FileType c,cpp set ts=2
autocmd FileType c,cpp set sw=2
autocmd FileType java set ts=4

