"相关注释
"pumvisible()：如果弹出框可见，返回非零，否则返回零
"
"GitHub:USER:breezetemple:PASSWD:PHONETAB
"

"Vundle管理vim插件
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'git@github.com:majutsushi/tagbar.git'
Plugin 'git@github.com:junegunn/vim-easy-align.git'
Plugin 'git@github.com:easymotion/vim-easymotion.git'
Plugin 'git@github.com:vim-airline/vim-airline.git'
Plugin 'git@github.com:vim-airline/vim-airline-themes.git'

Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'ctags.vim'
Plugin 'Mark'

Plugin 'vim-scripts/restore_view.vim'                                                                                              
set viewoptions=cursor,folds,slash,unix

"sudo apt-get install silversearcher-ag
"man ag
Plugin 'rking/ag.vim'
Plugin 'dyng/ctrlsf.vim'

"Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'FelikZ/ctrlp-py-matcher'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

Plugin 'terryma/vim-multiple-cursors'
Plugin 'myusuf3/numbers.vim'
let g:enable_numbers = 1

"Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plugin 'git@github.com:junegunn/fzf.vim.git'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'vim-scripts/matchit.zip'
Plugin 'gregsexton/MatchTag'
Plugin 'mbbill/undotree'

"显示TAB缩进等级
Plugin 'Yggdroot/indentLine'

Plugin 'mhinz/vim-signify'
Plugin 'gcmt/wildfire.vim'


" vim
"spf13-vim

" complete
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'honza/vim-snippets'
"Plugin 'Valloric/YouCompleteMe'
	
"Plugin 'marijnh/tern_for_vim'
" Javascript
Plugin 'roxma/nvim-cm-tern'
" C/C++
Plugin 'roxma/ncm-clang'
Plugin 'roxma/nvim-completion-manager'
Plugin 'roxma/vim-hug-neovim-rpc'

"Plugin 'Shougo/deoplete.nvim'
"Plugin 'roxma/nvim-yarp'
"Plugin 'roxma/vim-hug-neovim-rpc'
"Plugin 'zchee/deoplete-clang'

"tags
"Plugin 'DfrankUtil'                                             
"Plugin 'vimprj'                                                 
"Plugin 'indexer.tar.gz'

" Better Rainbow Parentheses
Plugin 'kien/rainbow_parentheses.vim'

" vimproc is a great asynchronous execution library for Vim
Plugin 'Shougo/vimproc.vim', {'do' : 'make'}

" This plugin provides a start screen for Vim and Neovim.
Plugin 'mhinz/vim-startify'

" default vim options
Plugin 'tpope/vim-sensible'

Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'
Plugin 'chemzqm/unite-git-log'
Plugin 'chemzqm/vim-easygit'

" vim colortheme
Plugin 'skielbasa/vim-material-monokai'
Plugin 'emhaye/ceudah.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'gkjgh/cobalt'
Plugin 'sickill/vim-monokai'
Plugin 'Zabanaa/neuromancer.vim'
Plugin 'dracula/vim'
Plugin 'vim-scripts/PaperColor.vim'
Plugin 'morhetz/gruvbox'
Plugin 'rakr/vim-one'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'szorfein/darkest-space'
Plugin 'crater2150/vim-theme-chroma'
Plugin 'agude/vim-eldar'
Plugin 'Reewr/vim-monokai-phoenix'
Plugin 'pkukulak/idle'

" tools
Plugin 'fogine/vim-syntaxattr'
Plugin 'guns/xterm-color-table.vim'
" Plugin 'lilydjwg/colorizer'

" Switch Colorscheme
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-colorscheme-switcher'

" UI
"Plugin 'ryanoasis/vim-devicons'

" Lint
"Plugin 'w0rp/ale'

""""""""""""""""""""""""""""""
" NEW
""""""""""""""""""""""""""""""
" Functions and mappings to close open HTML/XML tags
" Plugin 'docunext/closetag.vim'
" Plugin 'mattn/emmet-vim'

"Plugin 'xolox/vim-session'

call vundle#end()            " required
filetype plugin indent on    " required


"set cpt=k,b,. " cpt = 'complete' 实现就近补全功能
"
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
"set tw=78
set colorcolumn=78

set fileformat=unix
"set fileformats=unix

"将tab替换为空格
nmap tt :%s/\t/ /g<CR>

" 显示tab和空格
" set list
" 设置tab和空格样式
" set lcs=tab:\|\ ,nbsp:%,trail:-
" 设定行首tab为灰色
"highlight LeaderTab ctermfg=2
" 匹配行首tab
"match LeaderTab /^\t/
"autocmd FileType c,cpp,python,xml,java,sh,html,javascript autocmd BufWrite <buffer> :%s/\s\+$//e

"语法高亮
syntax enable
syntax on

"filetype plugin indent on
filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cul "高亮当前行
"set cuc
"autocmd InsertEnter * se cul " 用浅色高亮当前行
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示

"配色表选择 /usr/share/vim/vim74/colors
"配色表选择 /usr/local/share/vim/vim80/colors

"GUI or XTerm
set termguicolors

set background=dark " for the dark version
" set background=light " for the light version
"colorscheme one
"colorscheme 256-jungle
"colorscheme PaperColor
"colorscheme gruvbox
"colorscheme monokai
"colorscheme solarized
"colorscheme material-monokai
"colorscheme darkest-space
"colorscheme cobalt
"colorscheme chroma
"colorscheme eldar
colorscheme idle

"设置vim默认编码，兼容汉字国标
set fencs=utf-8,cp936               "设定默认解码
set fileencodings=utf-8,gb2312,gbk,gb18030  "从磁盘读取文件的时候，通过此设置完成自动识别编码
set termencoding=utf-8              "用于屏幕显示的编码方式
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8              "vim内部使用的字符编码方式 --通常为utf-8 修改为prc是为解决中文乱码


""""""""""""""""""""""""""""""
" AG
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/ag.vim/"))
    set runtimepath^=~/.vim/bundle/ag
    "let g:ag_working_path_mode="r"
    let g:ag_prg = 'ag -S --nocolor --nogroup --column --ignore sitedata --ignore image --ignore "tags" --ignore "cscope.out" --ignore "*~" --ignore-dir "output"'
    nmap <leader>ag :Ag! <C-R><C-W><CR>
    nmap <C-u> :Ag!
    nmap <leader>as :Ag!
endif

""""""""""""""""""""""""""""""
" Ctrlsf
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/ctrlsf.vim/"))
    let g:ctrlsf_position = 'top'
    let g:ctrlsf_winsize = '40%'
    let g:ctrlsf_context = '-B 3 -A 5'
    let g:ctrlsf_auto_close = 0
    let g:ctrlsf_extra_backend_args = {
        \ 'ag': '-S --nogroup --ignore sitedata --ignore "tags" --ignore "cscope.out" --ignore "*~" --ignore-dir "output"'
        \ }
    let g:ctrlsf_mapping = {
        \ "next": "n",
        \ "prev": "N",
        \ }
    nmap <leader><leader>a :CtrlSF <C-R><C-W><CR>
endif


""""""""""""""""""""""""""""""
" vim-startify
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/vim-startify/"))

    let g:startify_enable_special         = 1
    let g:startify_files_number           = 15
    let g:startify_relative_path          = 1
    let g:startify_change_to_dir          = 0
    let g:startify_update_oldfiles        = 1
    let g:startify_session_autoload       = 0
    let g:startify_session_persistence    = 1
    let g:startify_session_delete_buffers = 1

    let g:startify_skiplist = [
                \ 'COMMIT_EDITMSG',
                \ 'bundle/.*/doc',
                \ '/data/repo/neovim/runtime/doc',
                \ '/Users/mhi/local/vim/share/vim/vim74/doc',
                \ ]

    let g:startify_bookmarks = [
                \ { 'c': '~/.vim/vimrc' },
                \ '~/golfing',
                \ ]

    let g:startify_session_dir = '~/.vim/sessions'

    let g:startify_custom_footer =
          \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

    let g:startify_list_order = [
            \ ['   My most recently used files'],
            \ 'files',
            \ ['   My most recently used files in the current directory:'],
            \ 'dir',
            \ ['   These are my sessions:'],
            \ 'sessions',
            \ ['   These are my bookmarks:'],
            \ 'bookmarks',
            \ ['   These are my commands:'],
            \ 'commands',
            \ ]

    hi StartifyBracket ctermfg=240
    hi StartifyFile    ctermfg=147
    hi StartifyFooter  ctermfg=240
    hi StartifyHeader  ctermfg=114
    hi StartifyNumber  ctermfg=215
    hi StartifyPath    ctermfg=245
    hi StartifySlash   ctermfg=240
    hi StartifySpecial ctermfg=240
endif


""""""""""""""""""""""""""""""
" YCM
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/YouCompleteMe/"))
    set completeopt-=preview
    "设置全局配置文件的路径
    "let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
    ""开启基于tag的补全，可以在这之后添加需要的标签路径
    let g:ycm_collect_identifiers_from_tags_files = 1
    "开启语义补全
    let g:ycm_seed_identifiers_with_syntax = 1
    "不显示开启vim时检查ycm_extra_conf文件的信息
    let g:ycm_confirm_extra_conf = 0
    ""每次重新生成匹配项，禁止缓存匹配项
    let g:ycm_cache_omnifunc = 0
    ""在注释中也可以补全
    let g:ycm_complete_in_comments = 0
    " 设置Python解释器的路径
    let g:ycm_server_python_interpreter = '/usr/bin/python'
    ""输入第一个字符就开始补全
    let g:ycm_min_num_of_chars_for_completion = 1
    ""不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
    let g:ycm_use_ultisnips_completer = 0
    let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'nerdtree' : 1,
        \ 'qf' : 1,
        \ 'notes' : 1,
        \ 'markdown' : 1,
        \ 'unite' : 1,
        \ 'text' : 1,
        \ 'vimwiki' : 1,
        \ 'gitcommit' : 1,
        \}

    let g:ycm_show_diagnostics_ui =
        \ get( g:, 'ycm_show_diagnostics_ui',
        \ get( g:, 'ycm_register_as_syntastic_checker', 0 ) )

    "let g:ycm_server_keep_logfiles = 1
    "let g:ycm_server_log_level = 'debug'

    ""if exists(expand("../.ycm_extra_conf.py"))
    ""    let g:ycm_auto_trigger = 1
    ""else
    ""    let g:ycm_auto_trigger = 0
    ""endif
    ""
    "nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
    "nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
    "nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
    "nmap <F10> :YcmDiags<CR>

endif

""""""""""""""""""""""""""""""
" nvim-completion-manager
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/nvim-completion-manager/"))
    " Requirements
    " pip3 install --user neovim jedi psutil setproctitle
    " pip install --user neovim jedi psutil setproctitle
    " .clang_complete file in each project root.
    " Example of .clang_complete file:
    "   -DDEBUG
    "   -include ../config.h
    "   -I../common
    "   -I/usr/include/c++/4.5.3/
    "   -I/usr/include/c++/4.5.3/x86_64-slackware-linux/
    " Makefile example for auto-generating .clang_complete
    "   .clang_complete: Makefile
	"       echo $(CXXFLAGS) > $@
    "
    "   make .clang_complete
    "
    " Clang Setting
    " path to directory where library can be found
    let g:clang_library_path='/usr/lib/llvm-3.8/lib'
    " or path directly to the library file
    let g:clang_library_path='/usr/lib/llvm-3.8/lib/libclang-3.8.so'

    " NCM Setting
    " don't give |ins-completion-menu| messages.  For example,
    " '-- XXX completion (YYY)', 'match 1 of 2', 'The only match',
    "set shortmess+=c

    " When the <Enter> key is pressed while the popup menu is visible,
    " it only hides the menu.
    " Use this mapping to hide the menu and also start a new line.
    inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

    " When using CTRL-C key to leave insert mode,
    " it does not trigger the autocmd InsertLeave.
    " You should use CTRL-[, or map the <c-c> to <ESC>
    " inoremap <c-c> <ESC>

    " Use <TAB> to select the popup menu:
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    "let g:cm_sources_override = {
    "    \ 'cm-tags': {'enable':0}
    "    \ }

    let g:cm_complete_start_delay = 1

endif


""""""""""""""""""""""""""""""
" deoplete.nvim
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/deoplete.nvim/"))
    " Use deoplete.
    let g:deoplete#enable_at_startup = 1
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


""""""""""""""""""""""""""""""
" CRTL-P
" Press <c-f> and <c-b> to cycle between modes.
" Press <c-d> to switch to filename only search instead of full path.
" Press <c-r> to switch to regexp mode.
""""""""""""""""""""""""""""""
" ctrlp {
    if isdirectory(expand("~/.vim/bundle/ctrlp.vim/"))
        let g:ctrlp_map = '<c-p>'
        let g:ctrlp_cmd = 'CtrlP'

        let g:ctrlp_working_path_mode = 'a'
        nnoremap <silent> <D-t> :CtrlP<CR>
        nnoremap <silent> <D-r> :CtrlPMRU<CR>

        let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
            \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|o)$',
            \ }

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
            nnoremap <C-l> :CtrlPFunky<Cr>
        endif

        if isdirectory(expand("~/.vim/bundle/ctrlp-py-matcher/"))
            let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
        endif

    endif
"}


""""""""""""""""""""""""""""""
" UNITE
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/unite.vim/"))
    let g:unite_source_history_yank_enable = 1
    call unite#filters#matcher_default#use(['matcher_fuzzy'])

    nnoremap <leader><leader>z :Unite -start-insert -vertical -winwidth=60 -sync file<cr>
    "nnoremap <leader><leader>x :Unite -start-insert -winheight=15 file_rec/async<cr>
    nnoremap <leader><leader>c :<C-u>Unite -vertical -winwidth=60 -buffer-name=files -start-insert file_rec/async:!<cr>
    "nnoremap <leader><leader>x :Unite -no-empty -vertical -winwidth=60 grep:.<CR>

    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts =
                \ '-i --vimgrep --hidden --nogroup --column --ignore ' .
                \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'' --ignore ''output'' --ignore ''cscope.*'' --ignore ''deps'' --ignore ''tags'''
    let g:unite_source_grep_recursive_opt = ''

    nnoremap <silent> <space>s :Unite -quick-match -winheight=10 buffer<cr><CR>

    nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
    nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
    nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
    nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
    nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
    nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

    " Custom mappings for the unite buffer
    autocmd FileType unite call s:unite_settings()
    function! s:unite_settings()
        " Play nice with supertab
        let b:SuperTabDisabled=1
        " Enable navigation with control-j and control-k in insert mode
        imap <buffer> <C-j>   <Plug>(unite_select_next_line)
        imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
    endfunction

endif

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
" UNDOTREE
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/undotree/"))
    nnoremap <S-F5> :UndotreeToggle<cr>
    set undodir=~/.vim/undodir
    set undofile
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
    map <leader><leader>d :IndentLinesToggle<CR>
    let g:indentLine_enabled = 0
    let g:indentLine_char = "┊"
    let g:indentLine_color_term = 239
    let g:indentLine_showFirstIndentLevel = 0
    "add by myself
    let g:indentLine_startFirstIndentLevel = 2
    let g:indentLine_indentLevel = 9
endif


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
    "nmap <S-F7> :NERDTreeToggle<CR>
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
    "let loaded_nerd_tree=1

    nmap <S-F7> :NERDTreeToggle<CR>

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
noremap <silent> <leader>' :BufExplorer<CR>
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
" RAINBOW PARENTHESES
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/rainbow_parentheses.vim/"))
    let g:rbpt_colorpairs = [
        \ ['brown',       'RoyalBlue3'],
        \ ['Darkblue',    'SeaGreen3'],
        \ ['darkgray',    'DarkOrchid3'],
        \ ['darkgreen',   'firebrick3'],
        \ ['darkcyan',    'RoyalBlue3'],
        \ ['darkred',     'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['brown',       'firebrick3'],
        \ ['gray',        'RoyalBlue3'],
        \ ['darkcyan',    'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['Darkblue',    'firebrick3'],
        \ ['darkgreen',   'RoyalBlue3'],
        \ ['darkcyan',    'SeaGreen3'],
        \ ['darkred',     'DarkOrchid3'],
        \ ['red',         'firebrick3'],
        \ ]

    let g:rbpt_max = 16
    let g:rbpt_loadcmd_toggle = 0

    au VimEnter * RainbowParenthesesToggle      "Toggle it on/off
    au Syntax * RainbowParenthesesLoadRound     "(), the default when toggling
    au Syntax * RainbowParenthesesLoadSquare    "[]
    au Syntax * RainbowParenthesesLoadBraces    "{}
endif

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
" AIRLINE
""""""""""""""""""""""""""""""
if isdirectory(expand("~/.vim/bundle/vim-airline/"))

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    let g:airline_powerline_fonts = 1

    "let g:airline_theme='dark'
    "let g:airline_theme='simple'
    let g:airline_theme='papercolor'
    "let g:airline_theme='solarized'
    "let g:airline_theme='murmur'
    "let g:airline_theme='kalisi'

    let g:airline_section_b = airline#section#create(['file', 'readonly'])
    "let g:airline_section_error = airline#section#create(['filetype'])

    let g:airline#extensions#default#layout = [
                \ [ 'a', 'b', 'x' ],
                \ [ 'y', 'z']
                \ ]
    let g:airline#extensions#tagbar#flags = 'f'

    "设置切换Buffer快捷键"
    let g:airline#extensions#tabline#enabled = 0
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#fnamemod = ':t'

    nmap <leader>1 <Plug>AirlineSelectTab1
    nmap <leader>2 <Plug>AirlineSelectTab2
    nmap <leader>3 <Plug>AirlineSelectTab3
    nmap <leader>4 <Plug>AirlineSelectTab4
    nmap <leader>5 <Plug>AirlineSelectTab5
    nmap <leader>6 <Plug>AirlineSelectTab6
    nmap <leader>7 <Plug>AirlineSelectTab7
    nmap <leader>8 <Plug>AirlineSelectTab8
    nmap <leader>9 <Plug>AirlineSelectTab9
    nmap <leader>- <Plug>AirlineSelectPrevTab
    nmap <leader>+ <Plug>AirlineSelectNextTab

endif

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
" CSCOPE
""""""""""""""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <F4> :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <F5> :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <F6> :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <F3> :!ctags -R --c-kinds=+lx --fields=+laS --extra=+q  $PWD /home/yanwzh/workspace/drivers/v1.9/gxbus <CR><CR>:!cscope -Rbkq<CR>
"nmap <F3><F3> :!ctags -R --c++-kinds=+plx --fields=+iaS --extra=+q . /home/yanwzh/workspace/drivers/v1.9/gxbus <CR><CR>:!cscope -Rbkq<CR>
nmap <F3> :!ctags -R --c-kinds=+cdefgmnpstulvx --fields=+ilaSzm --extra=+q  $PWD <CR><CR>:!cscope -Rbkq<CR>
nmap <F3><F3> :!ctags -R --c++-kinds=+plx --fields=+iaS --extra=+q $PWD <CR><CR>:!cscope -Rbkq<CR>

"添加tags位置
"set autochdir "自动切换目录，会导致FuzzyFinder失败 如果打开使用sk代替sl搜索文件 同时ctags生成时需要使用绝对路径
set tags=tags; "自动查找 这个分号是不能省略

set tags+=../platform/gxbus/tags
"set tags+=../platform/gxcoreapi/tags
"set tags+=../platform/gxavdev/tags
"set tags+=../platform/demod/tags
"set tags+=../platform/gxcas/tags
"set tags+=../platform/thirdparty/tags

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

"function! KRIndent()
"    let c_space_errors = 0
"    set fileformats=unix
"    set textwidth=120
"    set noexpandtab
"    set shiftround
"    set cindent
"    set formatoptions=tcqlron
"    set cinoptions=:0,l1,t0,g0
"    syntax keyword cType u8 u16 u32 u64 s8 s16 s32 s64 off64_t
"    highlight default link LinuxError ErrorMsg
"
"    syntax match LinuxError / \+\ze\t/     " spaces before tab
"    syntax match LinuxError /\s\+$/        " trailing whitespaces
"    "syntax match LinuxError /\%121v.\+/    " virtual column 121 and more
"    "autocmd BufWrite <buffer> :%s/\s\+$//e " 文件保存时，自动删除行尾空格
"endfunction
"if has("autocmd")
"    autocmd FileType c,cpp,h,hh call KRIndent()
"endif
"

" load the types.vim highlighting file, if it exists
autocmd BufRead,BufNewFile *.[ch] let fname = "/home/yanwzh/workspace/Solution-for-debug/base/.hightlight"
autocmd BufRead,BufNewFile *.[ch] if filereadable(fname)
autocmd BufRead,BufNewFile *.[ch]   exe 'so ' . fname
autocmd BufRead,BufNewFile *.[ch] endif
