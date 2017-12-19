"相关注释
"pumvisible()：如果弹出框可见，返回非零，否则返回零
"
"GitHub:USER:breezetemple:PASSWD:PHONETAB
"

"Vundle管理vim插件
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Tagbar'
Bundle 'vim-scripts/c.vim'
Bundle 'ctags.vim'
Bundle 'cscope.vim'
Bundle 'autoload_cscope.vim'
Bundle 'Mark'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'junegunn/vim-easy-align'        
Bundle 'Lokaltog/vim-easymotion'        
Bundle 'Lokaltog/vim-powerline'         
Bundle 'vim-scripts/bufexplorer.zip'    

"sudo apt-get install silversearcher-ag
"man ag
Bundle 'rking/ag.vim'
Bundle 'dyng/ctrlsf.vim'

Bundle 'kien/ctrlp.vim'                 
Bundle 'tacahiroy/ctrlp-funky'

Bundle 'tpope/vim-surround'             
Bundle 'tpope/vim-repeat'

"Bundle 'Raimondi/delimitMate'           
"Bundle 'jiangmiao/auto-pairs'

Bundle 'terryma/vim-multiple-cursors'   

Bundle 'myusuf3/numbers.vim'            
let g:enable_numbers = 1

Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'magic-dot-files/TagHighlight'
"autocmd BufWritePost * UpdateTypesFile                                

Bundle 'vim-scripts/sessionman.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/restore_view.vim'
"set viewoptions=cursor,folds,slash,unix
set viewoptions=cursor,slash,unix

"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Yggdroot/indentLine'

Bundle 'mhinz/vim-signify'
Bundle 'gcmt/wildfire.vim'
Bundle 'sjl/gundo.vim'

"spf13-vim
Bundle 'Shougo/neocomplete.vim.git'  
"Bundle 'Shougo/neosnippet'
"Bundle 'Shougo/neosnippet-snippets'
"Bundle 'honza/vim-snippets'

Bundle 'fatih/vim-go'
Bundle 'javacomplete'

Bundle 'rhysd/vim-clang-format'
"
"let g:clang_format#style_options = {
"    \ "AccessModifierOffset" : -4,
"    \ "AllowShortIfStatementsOnASingleLine" : "true",
"    \ "AlwaysBreakTemplateDeclarations" : "true",
"    \ "Standard" : "C++11"}


""""""""""""""""""""""""""""""
" OLD
""""""""""""""""""""""""""""""
"Bundle 'vim-scripts/DoxygenToolkit.vim'
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" NEW
""""""""""""""""""""""""""""""
"Bundle 'scrooloose/syntastic'
"Bundle 'ervandew/supertab'
"set cpt=k,b,. " cpt = 'complete' 实现就近补全功能
"
"filetype plugin indent on
filetype plugin on

""""""""""""""""""""""""""""""

set number      "显示行号
set ignorecase     "搜索时忽略大小写 --noignorecase
set incsearch       "在搜索时，输入的词句逐字符高亮
set hlsearch        "高亮搜索词 --nohlsearch
set nocompatible    "是否兼容VI模式 --compatible 兼容模式，tab不会变为空格
"set modeline
set nowrap      "折行设置 --nowrap
set nolinebreak     "折行设置 --nolinebreak
set nobackup        ""不备份
set showcmd
set showfulltag
set autoindent
set nobackup
set scrolloff=3

" 以下四行参数请不要修改
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set tw=78
set colorcolumn=78

set fileformat=unix  
"set fileformats=unix 

"将tab替换为空格
nmap tt :%s/\t/ /g<CR>

" 显示tab和空格
"set list
" 设置tab和空格样式
"set lcs=tab:\|\ ,nbsp:%,trail:-
" 设定行首tab为灰色
"highlight LeaderTab ctermfg=2
" 匹配行首tab
"match LeaderTab /^\t/

"语法高亮
syntax enable
syntax on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关    
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cul "高亮当前行
"set cuc
"autocmd InsertEnter * se cul " 用浅色高亮当前行
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示

"配色表选择 /usr/share/vim/vim74/colors
set t_Co=256
set background=dark
colorscheme 256-jungle
"colorscheme yanwzh
"solarized BlackSea ansi_blows putty greens colorful256 ansi_blows vividchalk adrian colorer darkzen elflord

"设置vim默认编码，兼容汉字国标
set fencs=utf-8,cp936               "设定默认解码
set fileencodings=utf-8,gb2312,gbk,gb18030  "从磁盘读取文件的时候，通过此设置完成自动识别编码
set termencoding=utf-8              "用于屏幕显示的编码方式
set encoding=utf-8              "vim内部使用的字符编码方式 --通常为utf-8 修改为prc是为解决中文乱码


""""""""""""""""""""""""""""""
" AG
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/ag.vim/"))
    set runtimepath^=~/.vim/bundle/ag
    "let g:ag_working_path_mode="r"
    let g:ag_prg = 'ag -S --nocolor --nogroup --column --ignore sitedata --ignore image --ignore "tags" --ignore "cscope.out" --ignore "*~" --ignore-dir "output"'
    nmap <leader>ag :Ag! <C-R><C-W><CR>
    nmap <S-F12> :Ag! <C-R><C-W><CR>
endif

""""""""""""""""""""""""""""""
" Ctrlsf
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/ctrlsf.vim/"))
    let g:ctrlsf_position = 'left'
    let g:ctrlsf_winsize = '60%'
    let g:ctrlsf_context = '-B 3 -A 5'
    let g:ctrlsf_extra_backend_args = {
        \ 'ag': '-S --nogroup --ignore sitedata --ignore "tags" --ignore "cscope.out" --ignore "*~" --ignore-dir "output"'
        \ }
    let g:ctrlsf_mapping = {
        \ "next": "n",
        \ "prev": "N",
        \ }
    nmap <leader>aa :CtrlSF <C-R><C-W><CR>
endif


""""""""""""""""""""""""""""""
" WILDFIRE
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/wildfire.vim/"))
    let g:wildfire_objects = {
            \ "*" : ["i'", 'i"', "i)", "i]", "i}", "ip"],
            \ "html,xml" : ["at"],
            \ }
endif

"""""""""""""""""""""""""""""""
"" NEOCOMPLETE
"""""""""""""""""""""""""""""""
" Disable AutoComplPop.
set completeopt-=preview
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

""""""""""""""""""""""""""""""
" CRTL-P
""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ctrlp {
    if isdirectory(expand("~/.vim/bundle/ctrlp.vim/"))
        let g:ctrlp_working_path_mode = 'ra'
        nnoremap <silent> <D-t> :CtrlP<CR>
        nnoremap <silent> <D-r> :CtrlPMRU<CR>
        let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

        if executable('ag')
            let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
        elseif executable('ack-grep')
            let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
        elseif executable('ack')
            let s:ctrlp_fallback = 'ack %s --nocolor -f'
        " On Windows use "dir" as fallback command.
        elseif WINDOWS()
            let s:ctrlp_fallback = 'dir %s /-n /b /s /a-d'
        else
            let s:ctrlp_fallback = 'find %s -type f'
        endif
        if exists("g:ctrlp_user_command")
            unlet g:ctrlp_user_command
        endif
        let g:ctrlp_user_command = {
            \ 'types': {
                \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
                \ 2: ['.hg', 'hg --cwd %s locate -I .'],
            \ },
            \ 'fallback': s:ctrlp_fallback
        \ }

        if isdirectory(expand("~/.vim/bundle/ctrlp-funky/"))
            " CtrlP extensions
            let g:ctrlp_extensions = ['funky']
            let g:ctrlp_funky_matchtype = 'path'
            let g:ctrlp_funky_syntax_highlight = 1 

            "funky
            nnoremap <Leader>fu :CtrlPFunky<Cr>
        endif
    endif
"}

""""""""""""""""""""""""""""""
" GUNDO
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/gundo.vim/"))
    nmap <S-F5> :GundoToggle<CR>
    try
        set undodir=~/.vim/undodir
        set undofile
    catch
    endtry
endif


""""""""""""""""""""""""""""""
" WILDFIRE
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/wildfire.vim/"))
    "let g:wildfire_objects = [ "i'", 'i"', "i)", "i]", "i}", "ip", "it", "iw", "iW", "ib", "iB", "il", "ip", "ie", "a]", "a)", "a}", "ai", "ii", "im", "am", "ab", "aB" ]
    let g:wildfire_objects = ["iw", "i'", 'i"', "i)", "i]", "i}", "i`", "ip", "it"]
endif


""""""""""""""""""""""""""""""
" vim-indent-guides
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/vim-indent-guides/"))
    let g:indent_guides_start_level = 4
    let g:indent_guides_guide_size = 1
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_auto_colors = 0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=darkgrey
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=grey
endif

if isdirectory(expand("~/.vim/bundle/indentLine/"))
    let g:indentLine_char = "┊"
    let g:indentLine_color_term = 239
    let g:indentLine_showFirstIndentLevel = 0
    "add by myself
    let g:indentLine_startFirstIndentLevel = 3
    let g:indentLine_indentLevel = 9
endif

""""""""""""""""""""""""""""""
" SESSIONMAN
""""""""""""""""""""""""""""""
" Session List {
    if isdirectory(expand("~/.vim/bundle/sessionman.vim/"))
        set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
        nmap <leader>ml :SessionList<CR>
        nmap <leader>ms :SessionSave<CR>
        nmap <leader>mc :SessionClose<CR>
    endif
" }


""""""""""""""""""""""""""""""
" VIM-MULTIPLE-CURSORS
""""""""""""""""""""""""""""""
" Default mapping
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/nerdtree"))
    nmap <S-F7> :NERDTreeToggle<CR>
    let g:NERDTreeWinPos="right"
    let g:NERDTreeWinSize=35
    let g:NERDTreeShowLineNumbers=1
    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
    let NERDTreeChDirMode=0
    let NERDTreeQuitOnOpen=0
    let NERDTreeMouseMode=2
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
endif

""""""""""""""""""""""""""""""
" NERDTree GIT
""""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


""""""""""""""""""""""""""""""
" TAGBAR
""""""""""""""""""""""""""""""
"定义tagbar相关设置
nmap <S-F8> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_width = 35
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
    \ 'i:imports:1',
    \ 'c:constants',
    \ 'v:variables',
    \ 't:types',
    \ 'n:interfaces',
    \ 'w:fields',
    \ 'e:embedded',
    \ 'm:methods',
    \ 'r:constructor',
    \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

""""""""""""""""""""""""""""""
" BUFEXPLORER SETTING
""""""""""""""""""""""""""""""
"noremap \\ :BufExplorer<CR>
noremap <silent> <F10> :BufExplorer<CR>
let g:bufExplorerDefaultHelp=0 " Do not show default help. 
let g:bufExplorerShowRelativePath=1 " Show relative paths. 
let g:bufExplorerSortBy='mru' " Sort by most recently used. 


""""""""""""""""""""""""""""""
" MARK SETTING
""""""""""""""""""""""""""""""
map <F2> :marks<CR>
nmap ff <Plug>MarkSet
vmap ff <Plug>MarkSet
nmap mm <Plug>MarkClear
vmap mm <Plug>MarkClear
nmap mn <Plug>MarkRegex
vmap mn <Plug>MarkRegex


""""""""""""""""""""""""""""""
" EASY_ALIGN
""""""""""""""""""""""""""""""
vmap <SPACE> <Plug>(EasyAlign)


""""""""""""""""""""""""""""""
" EASYMOTION
""""""""""""""""""""""""""""""
"let g:EasyMotion_mapping_f = '_f'
"let g:EasyMotion_mapping_F = '_F'
"let g:EasyMotion_mapping_t = '_t'
"let g:EasyMotion_mapping_T = '_T'
"let g:EasyMotion_mapping_w = '_w'
"let g:EasyMotion_mapping_W = '_W'
"let g:EasyMotion_mapping_e = '_e'
"let g:EasyMotion_mapping_E = '_E'
"let g:EasyMotion_mapping_j = '_j'
"let g:EasyMotion_mapping_k = '_k'


""""""""""""""""""""""""""""""
" QUICKFIX
""""""""""""""""""""""""""""""
"quickfix按键映射表
nmap <F8> :cn<cr>                   
nmap <F7> :cp<cr>               

"nmap <leader>co :QFix<CR>
"nmap <leader>ct :call QFixToggle(1)<CR>
nmap <silent><F12> :call QFixToggle(1)<CR>
command! -bang -nargs=? QFix call QFixToggle(<bang>0)

function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced != 0
        cclose
    else
        if exists("g:my_quickfix_win_height")
            execute "copen ".g:my_quickfix_win_height
        else
            copen
        endif
    endif
endfunction

augroup QFixToggle
    autocmd!
    autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
    autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END


""""""""""""""""""""""""""""""
" POWERLINE
""""""""""""""""""""""""""""""
""总是显示状态栏
set laststatus=2
let g:Powerline_symbols = 'unicode'
"let g:Powerline_symbols = 'compatible'

""""""""""""""""""""""""""""""
" Surround Command
"""""""""""""""""""""""""""""""
"    Normal mode
"    -----------
"    ds  - delete a surrounding
"    cs  - change a surrounding
"    ys  - add a surrounding
"    yS  - add a surrounding and place the surrounded text on a new line + indent it
"    yss - add a surrounding to the whole line
"    ySs - add a surrounding to the whole line, place it on a new line + i"ndent it
"    ySS - same as ySs
"
"    Visual mode
"    -----------
"    s   - in visual mode, add a surrounding
"    S   - in visual mode, add a surrounding but place text on new line + indent it
"
"    Insert mode
"    -----------
"    <CTRL-s> - in insert mode, add a surrounding
"    <CTRL-s><CTRL-s> - in insert mode, add a new line + surrounding + indent
"    <CTRL-g>s - same as <CTRL-s>
"    <CTRL-g>S - same as <CTRL-s><CTRL-s>


""""""""""""""""""""""""""""""
" FUZZYFINDER
""""""""""""""""""""""""""""""
"FuzzyFinder配置
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
nnoremap <silent> sj     :FufBuffer<CR>
nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> sK     :FufFileWithFullCwd<CR>
nnoremap <silent> s<C-k> :FufFile<CR>
nnoremap <silent> sl     :FufCoverageFile<CR>
nnoremap <silent> sL     :FufCoverageFileChange<CR>
nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> sD     :FufDirWithFullCwd<CR>
nnoremap <silent> s<C-d> :FufDir<CR>
nnoremap <silent> sn     :FufMruFile<CR>
nnoremap <silent> sN     :FufMruFileInCwd<CR>
nnoremap <silent> sm     :FufMruCmd<CR>
nnoremap <silent> su     :FufBookmarkFile<CR>
nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
nnoremap <silent> si     :FufBookmarkDir<CR>
nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
nnoremap <silent> st     :FufTag<CR>
nnoremap <silent> sT     :FufTag!<CR>
nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
nnoremap <silent> s,     :FufBufferTag<CR>
nnoremap <silent> s<     :FufBufferTag!<CR>
vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
nnoremap <silent> s.     :FufBufferTagAll<CR>
nnoremap <silent> s>     :FufBufferTagAll!<CR>
vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
nnoremap <silent> sg     :FufTaggedFile<CR>
nnoremap <silent> sG     :FufTaggedFile!<CR>
nnoremap <silent> so     :FufJumpList<CR>
nnoremap <silent> sp     :FufChangeList<CR>
nnoremap <silent> sq     :FufQuickfix<CR>
nnoremap <silent> sy     :FufLine<CR>
nnoremap <silent> sh     :FufHelp<CR>
nnoremap <silent> se     :FufEditDataFile<CR>
nnoremap <silent> sr     :FufRenewCache<CR>
"
" F4和shift+F4调用FuzzyFinder命令行菜单""{{{
"
function! GetAllCommands()
  redir => commands
  silent command
  redir END
  return map((split(commands, "\n")[3:]),
      \      '":" . matchstr(v:val, ''^....\zs\S*'')')
endfunction

" 自定义命令行
let g:fuf_com_list=[':exe "FufBuffer                       " |" sj     ',
                   \':exe "FufFileWithCurrentBufferDir     " |" sk     ',
                   \':exe "FufFileWithFullCwd              " |" sK     ',
                   \':exe "FufFile                         " |" s<C-k> ',
                   \':exe "FufCoverageFile                 " |" sl     ',
                   \':exe "FufCoverageFileChange           " |" sL     ',
                   \':exe "FufCoverageFileRegister         " |" s<C-l> ',
                   \':exe "FufDirWithCurrentBufferDir      " |" sd     ',
                   \':exe "FufDirWithFullCwd               " |" sD     ',
                   \':exe "FufDir                          " |" s<C-d> ',
                   \':exe "FufMruFile                      " |" sn     ',
                   \':exe "FufMruFileInCwd                 " |" sN     ',
                   \':exe "FufMruCmd                       " |" sm     ',
                   \':exe "FufBookmarkFile                 " |" su     ',
                   \':exe "FufBookmarkFileAdd              " |" s<C-u> ',
                   \':exe "FufBookmarkFileAddAsSelectedText" |" s<C-u> ',
                   \':exe "FufBookmarkDir                  " |" si     ',
                   \':exe "FufBookmarkDirAdd               " |" s<C-i> ',
                   \':exe "FufTag                          " |" st     ',
                   \':exe "FufTag!                         " |" sT     ',
                   \':exe "FufTagWithCursorWord!           " |" s<C-]> ',
                   \':exe "FufBufferTag                    " |" s,     ',
                   \':exe "FufBufferTag!                   " |" s<     ',
                   \':exe "FufBufferTagWithSelectedText!   " |" s,     ',
                   \':exe "FufBufferTagWithSelectedText    " |" s<     ',
                   \':exe "FufBufferTagWithCursorWord!     " |" s}     ',
                   \':exe "FufBufferTagAll                 " |" s.     ',
                   \':exe "FufBufferTagAll!                " |" s>     ',
                   \':exe "FufBufferTagAllWithSelectedText!" |" s.     ',
                   \':exe "FufBufferTagAllWithSelectedText " |" s>     ',
                   \':exe "FufBufferTagAllWithCursorWord!  " |" s]     ',
                   \':exe "FufTaggedFile                   " |" sg     ',
                   \':exe "FufTaggedFile!                  " |" sG     ',
                   \':exe "FufJumpList                     " |" so     ',
                   \':exe "FufChangeList                   " |" sp     ',
                   \':exe "FufQuickfix                     " |" sq     ',
                   \':exe "FufLine                         " |" sy     ',
                   \':exe "FufHelp                         " |" sh     ',
                   \':exe "FufEditDataFile                 " |" se     ',
                   \':exe "FufRenewCache                   " |" sr     ',
                   \':exe "FufDir ~/"                        |" 更换目录从家目录jml',
                   \':exe "FufFile ~/"                       |" 打开文件从家目录jml',
                   \]


nnoremap <silent> <S-F11> :call fuf#givencmd#launch('', 0, '选择命令>', GetAllCommands())<CR>
nnoremap <silent> <F11> :call fuf#givencmd#launch('', 0, '选择命令>', g:fuf_com_list)<CR>

""""""""""""""""""""""""""""""
" Autoload_Cscope 添加cscope位置
""""""""""""""""""""""""""""""
"cscope add cscope.out ./
"cscope add /home/yanwzh/workspace/drivers/v1.9/gxbus/cscope.out /home/yanwzh/workspace/drivers/v1.9/gxbus
"Audo add cscope by autoloadcscope
let g:autocscope_menus=0 "关闭autocscope插件的快捷健映射.防止和我们定义的快捷键冲突.

""""""""""""""""""""""""""""""
" CSCOPE
""""""""""""""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <F4> :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <F5> :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <F6> :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <F3> :!ctags -R --c-kinds=+lx --fields=+laS --extra=+q  $PWD /home/yanwzh/workspace/drivers/v1.9/gxbus <CR><CR>:!cscope -Rbkq<CR>
"nmap <F3><F3> :!ctags -R --c++-kinds=+plx --fields=+iaS --extra=+q . /home/yanwzh/workspace/drivers/v1.9/gxbus <CR><CR>:!cscope -Rbkq<CR>
nmap <F3> :!ctags -R --c-kinds=+lx --fields=+laS --extra=+q  $PWD <CR><CR>:!cscope -Rbkq<CR>
nmap <F3><F3> :!ctags -R --c++-kinds=+plx --fields=+iaS --extra=+q $PWD <CR><CR>:!cscope -Rbkq<CR>


"添加tags位置
"set autochdir "自动切换目录，会导致FuzzyFinder失败 如果打开使用sk代替sl搜索文件 同时ctags生成时需要使用绝对路径
set tags=tags; "自动查找 这个分号是不能省略
"Sample
"set tags+=/home/yanwzh/workspace/goxceed/git-driver/v1.9-Beta3-2013-02-26/demod/tags
"ctags -R /home/boddy/hello/ ctags /usr/include/* /usr/include/bits/*
" 
"
"
"映射F12为更新tags cscope快捷按键
"For C++
"nmap <f12> <esc>:call Go_top()<cr>:!ctags -R --c++-kinds=+p --fields=+iaS
""\ --extra=+q $PWD<cr>:call Do_CsTag()<cr>:!nametags.sh<cr><cr>:call Go_curr()<cr>
"imap <f12> <esc>:call Go_top()<cr>:!ctags -R --c++-kinds=+p --fields=+iaS
""\ --extra=+q $PWD<cr>:call Do_CsTag()<cr>:!nametags.sh<cr><cr>:call Go_curr()<cr>
"nmap <a-f12> <esc>:!ctags -R --fields=+lS $PWD<cr><cr>
""\:!cscope -Rbkq<cr><cr>:!nametags.sh<cr><cr>
"imap <a-f12> <esc>:!ctags -R --fields=+lS $PWD<cr><cr>
""\:!cscope -Rbkq<cr><cr>:!nametags.sh<cr><cr>

"For C
"nmap <f12> <esc>:call Go_top()<cr>:!ctags -R --fields=+lS $PWD<cr><cr>
"            \:!cscope -Rbkq<cr><cr>:!nametags.sh<cr><cr>:call Go_curr()<cr>
"imap <f12> <esc>:call Go_top()<cr>:!ctags -R --fields=+lS $PWD<cr><cr>
"            \:!cscope -Rbkq<cr><cr>:!nametags.sh<cr><cr>:call Go_curr()<cr>
"
"func! Go_top()
"    　　wall
"    　　let g:Curr_dir=getcwd()
"    　　let i = 1
"    　　while i < 10
"    　　　　if filereadable("TOP")
"    　　　　　　return
"    　　　　else
"    　　　　　　cd ..
"    　　　　　let i += 1
"    　　　　endif
"    　　endwhile
"    　　exec 'cd'.g:Curr_dir
"
"endfunc
"
"func! Go_curr()
"    　　exec 'cd'.g:Curr_dir
"endfunc
"
"func! Do_CsTag()
"    　　silent! exec "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp'
"    　　\ -o -name 'Makefile' -o -name 'makefile' -o -name 'make*'
"    　　\ -o -name '*.cc' -o -name '*.C'-o -name '*.s'-o -name '*.S'>cscope.files"
"    　　silent! exec"!cscope -Rbkq -i cscope.files"
"    　　silent! exec"!cscope -Rbkq"
"endfunc

""""""""""""""""""""""""""""""
"AUTO STYLE
""""""""""""""""""""""""""""""
"autocmd BufNewFile,BufRead *.c set formatprg=astyle "help formatprg

"silent! exec '%!astyle -A3LYpjk3NSEUHwyW3 --style=break'
function! CodeFormat()
    ks
    "let curfile = expand("%")
    "let curfile = expand("%:t")
    "echo curfile
    silent! %s///g
    if &filetype == 'c'
        silent! exec '%!astyle -A3LYpjk3NSEUHwyW3xw'
    elseif &filetype == 'java'
        silent! exec '%!astyle -A2LYpxjk3NSEUHwyW3'
    endif
    silent! %g/^\s*$\n\s*$/d
    silent! %s/\s\+$//g
    's
endfunction
"-f用于代码块前后加空行

"autocmd BufNewFile,BufRead *.c call CodeFormat()
"autocmd BufNewFile,BufRead *.h call CodeFormat()
nmap <leader><leader>q :call CodeFormat()<CR>
"nmap <leader><leader>q :%!astyle -A3Lfpjk3NSwy<CR>

"function! TitleInsert()
"    call setline(1,"#coding:utf-8")
"    call append(1,'""""')
"    call append(2,"Program: ")
"    call append(3,"Description: ")
"    call append(4,"Author: Flyaway - flyaway1217@gmail.com")
"    call append(5,"Date: " . strftime("%Y-%m-%d %H:%M:%S"))
"    call append(6,"Last modified: " . strftime("%Y-%m-%d %H:%M:%S"))
"    call append(7,"Python release: 3.3.2")
"    call append(8,'"""')
"endfunction
"
"function! DateInsert()
"    call cursor(7,1)
"    if search('Last modified') != 0
"        let line = line('.')
"        call setline(line,"Last modified: " . strftime("%Y-%m-%d %H:%M:%S"))
"    endif
"endfunction
"
"map <F2> :call TitleInsert()<CR>ggjjA
"autocmd FileWritePre,BufWritePre *.c ks|call DateInsert()|'s



""""""""""""""""""""""""""""""
" JAVACOMPLETE
""""""""""""""""""""""""""""""
setlocal omnifunc=javacomplete#Complete
silent autocmd Filetype java set omnifunc=javacomplete#Complete
silent autocmd Filetype java set completefunc=javacomplete#CompleteParamsInf
"inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P> 
"inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
silent autocmd Filetype java,javascript,jsp inoremap <buffer>  .  .<C-X><C-O><C-P>
"autocmd FileType java inoremap <buffer> . .<C-X><C-O><C-P><Down>

