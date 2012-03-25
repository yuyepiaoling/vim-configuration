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

