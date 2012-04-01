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

" ����ļ����Ͳ��
filetype plugin on

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
set scrolloff=6
" �趨 tab ����Ϊ 4
set tabstop=4
" ���ð�BackSpace��ʱ�����һ��ɾ����4���ո�
set softtabstop=4
" �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4
set shiftwidth=4
set smarttab
set history=1024
" ��ͻ����ʾ��ǰ��
set nocursorline
" �����ļ�ʱ������
set nobackup
" �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
set autochdir

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


"4.1.2012  
"
" {{{ plugin - NeoComplCache.vim �Զ���ʾ���
"�����Զ����
let g:NeoComplCache_Disable_Auto_complete = 1
"�����Զ�������ʾ
map <Leader>en :NeoComplCacheEnable<CR>
"�����Զ�������ʾ
map <Leader>dis :NeoComplCacheDisable<CR>

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
	\ 'css' : $VIMFILES.'/dict/css.dic',
	\ 'php' : $VIMFILES.'/dict/php.dic',
	\ 'javascript' : $VIMFILES.'/dict/javascript.dic'
    \ }
let g:neocomplcache_snippets_dir=$VIMFILES."/snippets"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <a-k>     <Plug>(neocomplcache_snippets_expand)
smap <a-k>     <Plug>(neocomplcache_snippets_expand)
"inoremap <expr><C-g>     neocomplcache#undo_completion()
"inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><c-y>  neocomplcache#close_popup()
"inoremap <expr><c-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

au BufNewFile,BufRead *.snip set syntax=snippet ft=snippet foldmethod=indent
" }}}
 

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

    let g:VimAlpha = 245
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

    let g:VimTopMost = 0
    function! SwitchVimTopMostMode()
        if g:VimTopMost == 0
            let g:VimTopMost = 1
        else
            let g:VimTopMost = 0
        endif
        call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
    endfunction
    "ӳ�� Alt+Enter �л�ȫ��vim
    map <a-enter> <esc>:call ToggleFullScreen()<cr>
    "�л�Vim�Ƿ�����ǰ����ʾ
    nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
    "����Vim����Ĳ�͸����
    nmap <s-t> <esc>:call SetAlpha(10)<cr>
    "����Vim�����͸����
    nmap <s-y> <esc>:call SetAlpha(-10)<cr>
    "Vim������ʱ���Զ�����InitVim ��ȥ��Vim�İ�ɫ�߿�
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'InitVim', 0)
    " Ĭ������͸��
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'SetAlpha', g:VimAlpha)
endif
" }}}

    "�л�Vim�Ƿ�����ǰ����ʾ
    nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
endif
" }}}

