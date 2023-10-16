"""
"plug插件管理，全异步安装，不仅支持在线安装，更支持下载好的离线包直接安装。
""且安装完后，可以注释掉相关指令很方便的关闭对应插件。下面基本都是离线安装的例子
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'yegappan/taglist'
Plug 'airblade/vim-gitgutter'
call plug#end()

""" Tlist
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的   
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim  
let Tlist_Use_Right_Window=1	"左侧显示tlist窗口
"let Tlist_Auto_Open=1	"启动vim，自动打开tlist窗口
let Tlist_Ctags_Cmd="/usr/local/bin/ctags" "将taglist与ctags关联 
let Tlist_WinWidth=50

let Tlist_GainFocus_On_ToggleOpen=1
map <silent> <F9> :TlistToggle<cr>

""" 设置行号显示
set nu
set rnu

""" 按F7显示文件名
map <F7> <Esc>:echo expand('%:p')<Return>

""" 支持鼠标滚轮操作
set mouse=a

""" 设置tab显示长度
set shiftwidth=4
set tabstop=4

""" 语法高亮
syntax enable
syntax on

"""vim-gitgutter
nmap [c <Plug>(GitGutterPrevHunk)
nmap ]c <Plug>(GitGutterNextHunk)
highlight GitGutterAdd    ctermfg=blue
highlight GitGutterChange ctermfg=green
highlight GitGutterDelete ctermfg=red
set updatetime=800 "设置代码变动检查间隔为800ms

""" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>" " 使用 tab 切换下一个触发点
let g:UltiSnipsJumpBackwardTrigger="<S-tab>" "使用 shift+tab 切换上一个触发点
let g:UltiSnipsEditSplit="vertical" " 使用 UltiSnipsEdit 命令时垂直分割屏幕
let g:UltiSnipsSnippetDirectories=["UltiSnips","mysnippets"]

""" cscope配置
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>q :cs find t struct <C-R>=expand("<cword>") {<CR><CR>

""" MRU配置
"let MRU_Use_Current_Window = 1
let MRU_Window_Height = 25

"""
"----------------------------------------------------------------------
"" map CTRL_HJKL to move cursor in all modes
" some old terminal softwares will send ^H for <backspace> by default,
" " change your terminal settings to bind <backspace> to ASCII code 127.
" "----------------------------------------------------------------------
noremap <C-h> <left>
noremap <C-j> <down>
noremap <C-k> <up>
noremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

