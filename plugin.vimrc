"------------------------------------------all plugins
"pathogen
"ctags, m跳转定义
"git-blame, \s显示当前行修改历史
"git-gutter, 显示本文件的修改状态
"nerdtree, 文件浏览器，必装

"初始化插件管理器 pathogen
execute pathogen#infect()

"------------------------------------------ctags
"0. 提前各文件夹下ctags -R
"1. 使用m快捷键(ctrl+])来跳转到定义 ，新窗口打开定义则vs+m 或者 ctrl + w + ]
"2. tn/tN 来找下一个重复定义，或者ts 看所有的
"3. ctl + t，回到跳转前位置，方便在跳转一次后又移动过的情况
:nmap m <C-]>
set tags=~/code2303_4/src/net/tags,~/code2303_4/src/base/tags,~/code2303_4/src/url/tags,~/code2303_4/src/components/cronet/tags,~/code2303_4/src/ios/tags

"-----------------------------------------gitgutter
"设置GitGutter用来显示当前git状态
map <F5> :GitGutterLineHighlightsToggle <CR>

"-----------------------------------------gitblame
"设置git-blame来显示当前行commit信息
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

"-----------------------------------------nerdtree
"NERDTree文件管理器
autocmd vimenter * NERDTree      "自动开启Nerdtree
"autocmd BufWinEnter * NERDTreeMirror
"关闭最后一个文件后，自动关闭NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"设定 NERDTree 视窗大小
let g:NERDTreeWinSize = 40
"开启Nerdtree时自动显示Bookmarks
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nn <silent><F2> :NERDTreeFind<CR>
map <F4> :NERDTreeToggle<CR>

"NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
