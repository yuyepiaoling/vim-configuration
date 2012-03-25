"����leaderΪ
let mapleader=","
let g:mapleader=","
"�ر�vi�ļ���ģʽ
set nocompatible

"��ʾ�к�
set nu
"�����﷨����
syntax on


"���ļ�ʶ��

filetype on

"�Զ�����
set cindent

"ע���Զ����

set comments=sl:/*,mb:*,elx:*/

"���Զ�����

set nowrap

"�Զ��۵������

set fdm=syntax

"�����Զ���ɫ����

colorscheme torte

"html generator settings

let html_number_lines=1

let html_ignore_folding=1

let html_use_css=1

"���ñ�������
set termencoding=chinese
set fileencodings=ucs-bom,utf-8,cp936,cp950,latin1
set ambiwidth=double
set guifont=YaHei\ Consolas\ Hybrid:h12

" {{{ Winƽ̨�´���ȫ����� gvimfullscreen.dll
" Alt + Enter ȫ���л�
" Shift + t ���ʹ���͸����
" Shift + y �Ӵ󴰿�͸����
" Shift + r �л�Vim�Ƿ�������ǰ����ʾ
if has('gui_running') && has('gui_win32') && has('libcall')
    let g:MyVimLib = 'gvimfullscreen.dll'
    function! ToggleFullScreen()
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 0)
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
        call libcall(g:MyVimLib, 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
    endfunction
    "ӳ�� Alt+Enter �л�ȫ��vim
    map <a-enter> <esc>:call ToggleFullScreen()<cr>
    "Vim������ʱ���Զ�����InitVim ��ȥ��Vim�İ�ɫ�߿�
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
    "����Vim����Ĳ�͸����
    "
    "
    "
    "
    "
    "
" ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Դ�Сд����
set ignorecase
set smartcase
" �������ļ�����ʱ����������
set nowrapscan
" ʵʱ����
set incsearch
" ����ʱ������ʾ���ҵ����ı�
set hlsearch
" �رմ�������
set noerrorbells
set novisualbell
set t_vb=
    "
    nmap <s-t> <esc>:call SetAlpha(10)<cr>
    "����Vim�����͸����
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
    "�л�Vim�Ƿ�����ǰ����ʾ
    nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
endif
" }}}

