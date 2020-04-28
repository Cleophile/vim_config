call plug#begin()
"Plug 'gmarik/Vundle.vim'
" Plug 'davidhalter/jedi-vim'
" Plug 'ervandew/supertab'
"Plug 'scrooloose/syntastic'
" Plug 'w0rp/ale'
" ALE: NO configs, thus closed
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'SirVer/ultisnips'
Plug 'elzr/vim-json'
Plug 'honza/vim-snippets'
Plug 'justinmk/vim-sneak'
Plug 'kien/ctrlp.vim'
Plug 'jalvesaq/Nvim-R'
" Plug 'ludovicchabant/vim-lawrencium'
" Plug 'liuchengxu/vista.vim'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdcommenter'
" Plug 'sjl/gundo.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-commentary'
Plug 'tyru/open-browser.vim'
" Plug 'vim-scripts/a.vim'
Plug 'Cleophile/a.vim'
"Plug 'git://git.wincent.com/command-t.git'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
"Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'suan/vim-instant-markdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'jiangmiao/auto-pairs'
"Plug 'vim-scripts/taglist.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }
Plug 'xuhdev/vim-latex-live-preview'
Plug 'fatih/vim-go'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}
Plug 'luochen1990/rainbow'
Plug 'lilydjwg/colorizer'
Plug 'lfv89/vim-interestingwords'
" Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'easymotion/vim-easymotion'
Plug '/usr/local/opt/fzf'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sheerun/vim-polyglot'
" Plug 'vim-scripts/OmniCppComplete'
" Plug 'norcalli/nvim-colorizer.lua'
"Plug 'Valloric/YouCompleteMe', {'do': 'python3 install.py'}
Plug 'rizzatti/dash.vim'
call plug#end()

filetype plugin indent on
filetype plugin on

"Activate pathogen.vim in ~/.vim/autoload
" execute pathogen#infect()

"大写W和小写w通用
map :W :w
map :Q :q

set shellslash

"显示行号
set nu

"启动时隐去援助提示
set shortmess=atI

"语法高亮
syntax on

" set termguicolors

"不需要备份
set nobackup

"设置编码规则
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1

"Airline
set guifont=Liberation_Mono_for_Powerline:h15
let g:airline_powerline_fonts = 1
let g:airline_section_d = '%{strftime("%H:%M")}'
let g:airline#extensions#tabline#enabled = 1

"没有保存或文件只读时弹出确认
set confirm

"鼠标可用
set mouse=a

"tab缩进
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

"文件自动检测外部更改
set autoread

"c文件自动缩进
" set cindent

"自动对齐
set autoindent

"智能缩进
set smartindent

"智能大小写
set smartcase

"高亮查找匹配
set hlsearch

"背景色
" set background=dark

"显示匹配
set showmatch

"显示标尺，就是在右下角显示光标位置
set ruler

"去除vi的一致性
set nocompatible

"允许折叠
set foldenable
"""""""""""""""""设置折叠"""""""""""""""""""""
"
"根据语法折叠
"set fdm=syntax

"手动折叠
set fdm=manual

"设置键盘映射，通过空格设置折叠
nnoremap <leader><space> @=((foldclosed(line('.')<0)?'zc':'zo'))<CR>
""""""""""""""""""""""""""""""""""""""""""""""
"
set clipboard=unnamed

"不要闪烁
set novisualbell

"启动显示状态行
set laststatus=2

"浅色显示当前行
" autocmd InsertLeave * se nocul

"用浅色高亮当前行
autocmd InsertEnter * se cul

"新建编程文档语言自动模板启动
"依次向下：C Python Java HTML C++
"模板根目录位置/Users/wangtianmin/.vim/template/*.tlp
autocmd BufNewFile *.c 0r /Users/wangtianmin/.vim/template/c.tlp
autocmd BufNewFile *.py 0r /Users/wangtianmin/.vim/template/py.tlp
autocmd BufNewFile *.java 0r /Users/wangtianmin/.vim/template/java.tlp
autocmd BufNewFile *.pyw 0r /Users/wangtianmin/.vim/template/py.tlp
autocmd BufNewFile *.html 0r /Users/wangtianmin/.vim/template/html.tlp
autocmd BufNewFile *.cpp 0r /Users/wangtianmin/.vim/template/cpp.tlp
autocmd BufNewFile *.cc 0r /Users/wangtianmin/.vim/template/cpp.tlp
autocmd BufNewFile CMakeLists.txt 0r /Users/wangtianmin/.vim/template/cmakelist.tlp

"显示输入的命令
set showcmd

"被分割窗口之间显示空白
set fillchars=vert:/

" set fillchars=stl:/

" set fillchars=stlnc:/

"行内替换
set gdefault

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

"设置tags  
set tags=tags

colorscheme gruvbox

"设置更好的删除
set backspace=2

set magic

set t_Co=256   "256色
set mouse=a  "允许鼠标

"func SetTitle() 
autocmd BufNewFile * normal G
"endfunc

"使用F5自动执行代码
map <F5> :call CompileRunGcc()<CR>
    func! CompileRunGcc()
        exec "w"
        if &filetype == 'c'
            exec "!gcc % -o %<"
            exec "!time ./%<"
        elseif &filetype == 'cpp'
            exec "!g++ % -o %<"
            exec "!time ./%<"
        elseif &filetype == 'java'
            exec "!javac %"
            exec "!time java %<"
        elseif &filetype == 'sh'
            :!time bash %
        elseif &filetype == 'python'
            exec "!time python3.6 %"
        elseif &filetype == 'html'
            exec "!open -a Safari.app % &"
        elseif &filetype == 'javascript'
            exec "!node % &"
        elseif &filetype == 'go'
    "        exec "!go build %<"
            exec "!time go run %"
        elseif &filetype == 'mkd'
            exec "!~/.vim/markdown.pl % > %.html &"
            exec "!open -a Safari.app %.html &"
        endif
    endfunc

"Setting Jedi Plugin
" let g:SuperTabDefaultCompletionType=""
" let g:jedi#popup_on_dot=0

" ASM as the form of NASM
let g:asmsyntax="nasm"

"Setting GruvBox Color Scheme
set bg=dark
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_italic=1
let g:gruvbox_improved_strings=1
let g:gruvbox_improved_warnings=1
let g:gruvbox_guisp_fallback="bg"

"Set VJDE
" let g:vjde_completion_key='<c-q>' 
" let g:vjde_tab_cfu=1

"Setting Nerdtree
let NERDTreeQuitOnOpen=0 "打开文件时关闭树
let NERDTreeShowBookmarks=1 "显示书签
"Cheat-Sheet of Nerdtree
map <F3> :NERDTreeToggle<CR>
map <leader>tl :TlistToggle<cr>
nnoremap <leader>ma :set mouse=a<cr>
nnoremap <leader>mu :set mouse=<cr>
let NERDSpaceDelims=1

"Setting Tagbar
nmap <F8> :TagbarToggle<CR>

" Setting Minibuffer
" let g:miniBufExplMapWindowNavVim = 0
" let g:miniBufExplMapWindowNavArrows = 0
" let g:miniBufExplMapCTabSwitchBufs = 0
" nmap <leader>mmbe :MiniBufExplorer<CR>
"nmap <leader>mmbc :CMiniBufExplorer<CR>
"nmap <leader>mmbu :UMiniBufExplorer<CR>
"nmap <leader>mmbt :TMiniBufExplorer<CR>

"Setting taglist
let Tlist_Use_Right_Window=1 "taglist 显示在右侧 
let Tlist_Exit_OnlyWindow=1 "taglist 只剩下一个窗口时，自动关闭
let Tlist_File_Fold_Auto_Close=1
map tl :TlistToggle
nnoremap ev :vsplit $MYVIMRC
nnoremap sv :source $MYVIMRC

"Setting 代码折叠
"使用语法高亮定义代码折叠
"set foldmethod=syntax
"使用缩进定义代码折叠
set foldmethod=indent
"打开文件是默认不折叠代码
set foldlevelstart=99

"Setting Markdown
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

"设置光标形状
" Won't work in terminal
" set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i:ver10-iCursor-blinkwait300-binkon200-blinkoff150,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

"Setting indentLine
"Go to github: https://github.com/Yggdroot/indentLine for more information
" let g:indentLine_setColors = 0
let g:indentLine_color_gui = '#444444'
" let g:indentLine_bgcolor_gui = 202
let g:indentLine_char_list = ['│', '|', '¦', '┆', '┊']
" let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 1

"IndentLine Mapping
nmap <F7> :IndentGuidesToggle<CR>
"nmap <F7> :IndentGuidesDisable<CR>


"Set LaTex
set grepprg=grep\ -nH\ $*    " 使grep总是生成文件名
let g:tex_flavor='latex'    " vim默认把空的tex文件设为plaintex而不是tex，导致latex-suite不被加载
" set iskeyword+=:
autocmd BufEnter *.tex set sw=2

"FOR TAGBAR
"set updatetime=500

"配置LaTex实时浏览设置
autocmd Filetype tex setl updatetime=1000
let g:livepreview_previewer = 'open -a Adobe\ Acrobat'
nmap <F12> :LLPStartPreview<cr>
"let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 --interaction=nonstopmode $*' 

"配置JavaBrowser
let g:Javabrowser_Use_Icon = 1
let g:JavaBrowser_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8_1'
let g:Javabrowser_Use_Text_Icon = 1
let g:JavaBrowser_Inc_Winwidth = 0

"配置JavaComplete
setlocal omnifunc=javacomplete#Complete
"setlocal completefunc=javacomplete#CompleteParamsInfo
autocmd Filetype java set omnifunc=javacomplete#Complete
autocmd Filetype java set completefunc=javacomplete#CompleteParamsInf
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
autocmd Filetype java,javascript,jsp inoremap <buffer>  .  .<C-X><C-O><C-P>

"JavaScript配置
let g:tagbar_type_javascript = {
  \ 'ctagsbin' : 'jsctags'
\ }

"配置JavaScript JSBeauty 插件
nnoremap <F4> :call g:Jsbeautify()<CR>

"配置leader
let mapleader=" "

"配置Dash
nnoremap <F6> :Dash<CR>

"配置vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"Code folding for JS under vim-javascript
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

"配置 Rust
"" 开启rust的自动reformat的功能
let g:rustfmt_autosave = 1

"" 手动补全和定义跳转
set hidden
"" 这一行指的是你编译出来的racer所在的路径
let g:racer_cmd = "/Users/wangtianmin/.cargo/bin/racer"

" ALE
" let b:ale_fixers = {'javascript': ['prettier', 'eslint'],'python':['autopep8'],'*':['prettier', 'eslint']}
"let g:ale_sign_column_always = 1
" let g:ale_sign_error = '!!'
" let g:ale_sign_warning = '>>'
" let g:ale_lint_on_enter = 0
" let g:ale_enabled = 0

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <leader>m :bn<cr>
nnoremap <leader>n :bp<cr>


"setting rainbow_parentheses
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

nnoremap <leader>rpt :RainbowParenthesesToggle<CR>

"Vista
let g:vista_default_executive = 'ctags'

"Rainbow
let g:rainbow_active = 1

" coc-snippets
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

nnoremap <F2> :UndotreeToggle<CR>

" C++ Omni Completion
" let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
" C++ Syntax
let g:cpp_class_scope_highlight = 1

nnoremap <leader>v :set conceallevel=0<CR>
nnoremap <leader>b :set conceallevel=2<CR>

nnoremap <leader>j <Plug>(coc-definition)
nnoremap <leader>J <Plug>(coc-type-definition)
nnoremap <leader>f <Plug>(coc-implementation)
nnoremap <leader>F <Plug>(coc-references)
