"设置leader为
let mapleader=","
let g:mapleader=","
"关闭vi的兼容模式
set nocompatible

"显示行号
set nu
"设置语法高亮
syntax on


"打开文件识别

filetype on

"自动缩进
set cindent

"注释自动完成

set comments=sl:/*,mb:*,elx:*/

"不自动换行

set nowrap

"自动折叠代码块

set fdm=syntax

"设置自动配色方案

colorscheme torte

"html generator settings

let html_number_lines=1

let html_ignore_folding=1

let html_use_css=1

"设置编码字体
set termencoding=chinese
set fileencodings=ucs-bom,utf-8,cp936,cp950,latin1
set ambiwidth=double
set guifont=YaHei\ Consolas\ Hybrid:h12

" {{{ Win平台下窗口全屏组件 gvimfullscreen.dll
" Alt + Enter 全屏切换
" Shift + t 降低窗口透明度
" Shift + y 加大窗口透明度
" Shift + r 切换Vim是否总在最前面显示
if has('gui_running') && has('gui_win32') && has('libcall')
    let g:MyVimLib = 'gvimfullscreen.dll'
    function! ToggleFullScreen()
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 0)
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
        call libcall(g:MyVimLib, 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
    endfunction
    "映射 Alt+Enter 切换全屏vim
    map <a-enter> <esc>:call ToggleFullScreen()<cr>
    "Vim启动的时候自动调用InitVim 以去除Vim的白色边框
    "autocmd GUIEnter * call libcallnr(g:MyVimLib, 'InitVim', 0)

    let g:VimAlpha = 240
    function! SetAlpha(alpha)
        let g:VimAlpha = g:VimAlpha + a:alpha
        if g:VimAlpha < 180
            let g:VimAlpha = 180
        endif
        if g:VimAlpha > 255
            let g:VimAlpha = 255
        endif
        call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction
    "增加Vim窗体的不透明度
    "
    "
    "
    "
    "
    "
" 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set ignorecase
set smartcase
" 搜索到文件两端时不重新搜索
set nowrapscan
" 实时搜索
set incsearch
" 搜索时高亮显示被找到的文本
set hlsearch
" 关闭错误声音
set noerrorbells
set novisualbell
set t_vb=
    "
    nmap <s-t> <esc>:call SetAlpha(10)<cr>
    "增加Vim窗体的透明度
    nmap <s-y> <esc>:call SetAlpha(-10)<cr>

    let g:VimTopMost = 0
    function! SwitchVimTopMostMode()
        if g:VimTopMost == 0
            let g:VimTopMost = 1
        else
            let g:VimTopMost = 0
        endif
        call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
    endfunction
    "切换Vim是否在最前面显示
    nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
endif
" }}}

