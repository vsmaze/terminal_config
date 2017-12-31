filetype off
set path+=/usr/local/include,/usr/include/i386-linux-gnu
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos

" use git in vim
"Bundle 'tpope/vim-fugitive' 
"Bundle 'neocomplcache'
" EasyMotion
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'vimwiki'
Bundle 'golden-ratio'
Bundle 'Tagbar'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'UltiSnips'
Bundle 'honza/vim-snippets'
Bundle 'Valloric/YouCompleteMe'
Bundle 'omnicppcomplete'
"Bundle 'guicolorscheme.vim'
Bundle 'DoxygenToolkit'
Bundle 'altercation/vim-colors-solarized'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line
let mapleader = ","
set nocp "default codec
let g:vimwiki_list = [{'path': '~/notes/', 
		  \ 'syntax' : 'markdown', 'ext': '.md',
          \ 'template_path': '~/notes_html/templates/',
          \ 'template_default': 'default',
		  \ 'nested_syntaxes' : {'python':'python', 'c++':'cpp', 'c': 'c', 'bash':'sh'},  
          \ 'template_ext': '.html'}]

filetype plugin indent on              
filetype on
syntax on

set nocp     "Be Improved vim
	set t_Co=256 "256 color
set history=100     "command history lines"
set confirm           " always use confirm"
set clipboard+=x11-selection   "x11 clipboard"
set viminfo+=!      "enable viminfo"
set iskeyword+=_,$,@,%,#,-     
set nobackup     " no backup
set bufhidden=hide   "buf not use then hiden"
set linespace=0      "gui only"
set ruler                  "vim bottem ruler"
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
set cmdheight=1    
set backspace=2
set whichwrap+=<,>,h,l
set mouse=a             "enable mouse    gui && console"
set ttymouse=xterm2        ""
set shortmess=atl          
set report=0
set noerrorbells
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=5
set ignorecase
set nohlsearch
set incsearch
set scrolloff=3
set novisualbell
set laststatus=2
set formatoptions=tcrqn
set autoindent
set smartindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set nowrap
set nu
:set go-=m go-=T go-=r go-=L
set completeopt=menu,menuone
set fileencodings=ucs-bom,utf-8,gb2312,default,latin1


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetsDir="~/.vim/bundle/vundle/vim-snippets"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"set grepprg=grep\ -nH\ $*
"let g:tex_flavor = "latex"
nmap > <c-w>>
nmap < <c-w><
nmap - <c-w>-
nmap + <c-w>+
nmap = <c-w>=
imap jk <esc>
"let g:pathogen_disabled = ['imaps']
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
"nnoremap <silent><F8> :Tlist<CR>
nnoremap <silent><F8> :TagbarToggle<CR>
function! Hmake()
	call system("hh")
	edit Z1k2c3.c
endfunction
nnoremap <F10> :call Hmake() <CR><CR>


let NERDTreeShowBookmarks = 1
nnoremap <silent><F9> :NERDTreeToggle<CR>
nmap <c-m> <F9><F9>
nmap <F12> :wa<CR> :!ctags -R --c-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
nmap <F6> gg=G <c-o>
vmap <leader>y "+y
nmap <leader>p "+p

" golden ratio config
let g:golden_ratio_autocommand = 0
nmap <leader>a <Plug>(golden_ratio_resize)
nnoremap <leader>z <c-w><Bar><c-w>_

" full screen for gvim
function! ToggleFullScreen()
   call system("wmctrl -r :ACTIVE: -b toggle,fullscreen")
endfunction
map <silent> <F11> :call ToggleFullScreen()<CR>
:set go-=m go-=T go-=r go-=L
" vimwiki shortcuts
"nnoremap <leader>ss :VimwikiAll2HTML<CR>:Vimwiki2HTMLBrowse<CR>
"-- omnicppcomplete setting --
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 2 " show function prototype  in popup window
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=2
let OmniCpp_DefaultNamespaces=["std"]

" FuzzyFinder
map <leader>sr :FufCoverageFile<CR>
map <leader>sf :FufFile<CR>
map <leader>st :FufTag<CR>
noremap <silent> <C-]> :FufTagWithCursorWord!<CR>
let g:neocomplcache_enable_at_startup = 1

    if has('gui_running')
        set background=light
    else
        set background=dark
    endif
"let g:solarized_termcolors=256
set background=light
"set background=dark
colorscheme solarized
"colorscheme desert
nnoremap <leader>w :w<CR>
"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
map <c-x> :q<CR>
nmap <leader>sw :w !sudo tee %<CR><CR>
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1
nnoremap <leader>jj :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jk :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gt :YcmCompleter GetType<CR>

vnoremap <silent> s //e<C-r>=&selection=='execlusive'?'+1':''<CR><CR>:<c-u>call hisdel('search',-1)<Bar>let @/=hisget('search',-1)<CR>gvomap s :normal vs<CR>

nmap s <Plug>(easymotion-s2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:DoxygenToolkit_briefTag_pre="@功能  "
let g:DoxygenToolkit_paramTag_pre="@参数 "
let g:DoxygenToolkit_returnTag="@返回值   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="张宏"
"let g:DoxygenToolkit_licenseTag="My own license"   <-- !!! Does not end with "\<enter>"0

let g:vim_markdown_folding_disabled = 1
