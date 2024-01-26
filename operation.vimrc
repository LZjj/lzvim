"自定义grep命令，限定文件夹
:command -nargs=1 Crof :grep -irno "<args>" base net components/cronet url --exclude="*test*" --exclude="tags" --binary-files=without-match
:command -nargs=1 CroF :grep -rno "<args>" base net components/cronet url --exclude="*test*" --exclude="tags" --binary-files=without-match

"自定义切换头文件和源文件
:command H :e %:r.h
:command C :e %:r.cc
:command M :e %:r.mm

"查找关键词用, gd也重新定义为当前光标单词高亮并查找，不会乱跑
"查找关键词用, 方向键上下直接查找上下匹配并居中，gd后使用很方便
:nmap gd #*
:nmap <up> Nzz
:nmap <down> nzz
:nmap n nzz
:nmap N Nzz
"tab切换Tab 空格切换Buffer
:nnoremap <space> <C-w><C-w>
:nnoremap <tab> gt
"grep后copen，quickfix窗口使用回车打开新窗口
:nnoremap <Enter> <C-w>gf

"禁用F1
map <F1> <Nop>

"F2 F4给nerdtree用

"F3一键复制绝对路径
function GetCurFilePath()
    let cur_dir=getcwd()
    let cur_file_name=getreg('%')
    let dir_filename=cur_dir."/".cur_file_name
    echo dir_filename."         done"
    call setreg('+',dir_filename)
endfunction
nnoremap <silent> <F3> : call GetCurFilePath()<cr>

"F6一键复制相对相对路径
function GetFilePath()
    let cur_file_name=getreg('%')
    call setreg('+',cur_file_name)
endfunction
nnoremap <silent> <F6> : call GetFilePath()<cr>
