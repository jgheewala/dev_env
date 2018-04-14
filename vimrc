" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.

call pathogen#infect()
syntax enable
filetype plugin on  

" vim-devicon begins
set encoding=utf8
"------------------------------------------------------------------------------
"" Web-Dev Icons
"------------------------------------------------------------------------------
let g:webdevicons_enable = 0
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the custom source to unite
let g:webdevicons_enable_unite = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol='å'
let g:WebDevIconsUnicodeDecorateFileNodes = 1
" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" Adding the custom source to denite
let g:webdevicons_enable_denite = 1
" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = '[]'

"------------------------------------------------------------------------------
"" Vim-go
"------------------------------------------------------------------------------
" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_function_calls = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1 
let g:go_highlight_interfaces = 1
let g:go_highlight_build_constraints = 1  
let g:go_def_mapping_enabled=1
let g:go_highlight_fields = 1
let g:go_highlight_extra_types = 1
"let g:go_metalinter_autosave = 1
"let g:go_metalinter_deadline = "3s"
" go related changes
let g:go_fmt_command = "goimports"
" go language
let s:tlist_def_go_settings = 'go;g:enum;s:struct;u:union;t:type;' .
                           \ 'v:variable;f:function'
let g:go_disable_autoinstall = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled = 1
"let g:airline_theme='dark'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_highlighting_cache = 1
"------------------------------------------------------------------------------
"" NERDTree
"------------------------------------------------------------------------------
"
"" General properties
let NERDTreeDirArrows=1
"let NERDTreeMinimalUI=1
let NERDTreeIgnore=['\.o$', '\.pyc$', '\.php\~$']
let NERDTreeWinSize = 65

" Make sure that when NT root is changed, Vim's pwd is also updated
let NERDTreeChDirMode = 2
let NERDTreeShowLineNumbers = 1
let NERDTreeAutoCenter = 1

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  exec 'autocmd FileType nerdtree setlocal nolist'
endfunction

" Open nerdtree browers
map <C-a> :NERDTreeToggle<CR>

" reason for keeping nerd tree on left is so that tag bar can be on right
let g:NERDTreeWinPos = "left"
"let g:NERDTreeWinPos = "right"
"let g:NERDTreeWinSize=50
"let g:NERDTreeIndicatorMapCustom = {
"    \ "Modified"  : "✹",
"    \ "Staged"    : "✚",
"    \ "Untracked" : "✭",
"    \ "Renamed"   : "➜",
"    \ "Unmerged"  : "═",
"    \ "Deleted"   : "✖",
"    \ "Dirty"     : "✗",
"    \ "Clean"     : "✔︎",
"    \ "Unknown"   : "?"
"    \ }

let g:go_version_warning = 0
" tabbar.vim customization. Choose the buffer on single mouse click
let g:Tb_UseSingleClick = 1

" for Taglist.vim: choose single mouse click to select a tag
let Tlist_Use_SingleClick = 1

set selectmode=mouse

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒 '
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'


if &t_Co > 2 || has("gui_running")
"  set background=light
  syntax on
  set hlsearch
  " enable use of mouse
  set mouse=a
endif

" source $VIMRUNTIME/vimrc_example.vim
behave xterm

set nocompatible        " Use Vim defaults (much better!)

" always display a status line at the bottom of window
set laststatus=2

" set intial window size
" set columns=100
"set textwidth=100
set cc=110
filetype on
filetype plugin on
filetype indent on

" easy tab completions of command line.
set wildmenu

" allow tilde (~) to act as an operator -- ~w, etc.
set tildeop

" paste with no auto-indent
" set paste
" For switching between files inside gvim
map <C-n> : bn<CR>
map <C-p> : bp<CR>

set autoindent
set autoread
set backspace=2
set nobackup
set cindent
set cinoptions=}0,{0.5s
set exrc
set formatoptions=croq
set isfname=@,48-57,/,.,-,_,+,,,$,~
set incsearch
set infercase
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4
set report=0
set nostartofline

"set nonumber
set includeexpr=fnamemodify(v:fname,':t')
set path=.
set tagrelative
set ruler
set shiftwidth=4
set showmatch
set showcmd
set shortmess=atIA

"set errorfile=kop.q
"set errorformat=%f:%l:%m
"set highlight=8r,db,es,hs,mb,Mr,nu,rs,sr,tb,vr,ws
"set equalprg=/sw/contrib/solaris2bin/indent\ -npro\ -bap\ -bad\ -br\ -c40\ -cdb\ -ce\ -cli0.5\ -d0\ -nfc1\ -i4\ -lp\ -npsl


"set title titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)\ %=%{$CLEARCASE_ROOT} titlelen=120

" set the X11 font to use
set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
set guifont=10x13
set guifont=12x15
set guioptions-=T
set guifont=Monospace\ 10

" Only do this for Vim version 5.0 and later.
if version >= 500000

  " I like highlighting strings inside C comments
  let c_comment_strings=1

" let mysyntaxfile = "~/local/share/vim/usersyntax/usersyntax.vim"
  "set background=dark

  " Switch on syntax highlighting.
  syntax on

  " Switch on search pattern highlighting.
  set hlsearch

  " Hide the mouse pointer while typing
  set mousehide

  " For Win32 version, have "K" lookup the keyword in a help file
  if has("win32")
    let winhelpfile='windows.hlp'
    " map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green
  " Constants are not underlined but have a slightly lighter background
  highlight Normal ctermbg=black ctermfg=white guibg=black  guifg=snow
  highlight Cursor guibg=Green guifg=NONE
  highlight NonText ctermbg=black guibg=black
  " highlight NonText guibg=grey75
  highlight Constant gui=NONE guibg=grey15
  " highlight Constant gui=NONE guibg=grey80
  highlight Special ctermfg=yellow gui=NONE guibg=grey25
  " highlight Special gui=NONE guibg=grey85
" source ~/local/share/vim/vim56/syntax/syntax.vim

endif


map <F2>    :w<CR>
map <F3>    :x<CR>
map <F4>    :q<CR>

" map <F5>    :!gcc %<CR>
" map <F7>    :cn<CR>
" map <F8>    :cp<CR>
map <F9>    :cf /vob/ios/sys/obj-4k-

map <S-F1>  :1b<CR>
map <S-F2>  :2b<CR>
map <S-F3>  :3b<CR>
map <S-F4>  :4b<CR>
map <S-F5>  :5b<CR>
map <S-F6>  :6b<CR>
map <S-F7>  :7b<CR>
map <S-F8>  :8b<CR>
map <S-F9>  :9b<CR>
map <S-F10>  :10b<CR>
map <S-F11>  :11b<CR>

map <Leader>B  :set guifont=6x13<CR>
map <Leader>b  :set guifont=9x15<CR>

nnoremap <silent> ,s :if !&hlsearch <bar><bar> @/ != expand("<cword>")
         \ <bar> let @/=expand("<cword>") <bar> set hlsearch <bar> else
         \ <bar> set nohlsearch <bar> endif<CR>

"map <C-N>   :n<CR>
"map <C-P>   :N<CR>
map <Leader><C-N>   :cn<CR>
map <Leader><C-P>   :cp<CR>

map <Leader>\ :files<CR>

" For switching between files inside gvim
"map <C-Tab> : bn<CR>
"map <C-S-Tab> : bp<CR>

"   always show the buffernumber when using ^G
noremap <C-G> 2<C-G>

" Mini explorer stuff
" map <Leader>m :MiniBufExplorer<cr>
" map <Leader>c :CMiniBufExplorer<cr>
" map <Leader>u :UMiniBufExplorer<cr>
" map <Leader>t :TMiniBufExplorer<cr>
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"let g:miniBufExplUseSingleClick = 1
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

set tags=tags;
" to eliminate swap file creation
set maxmem=20971520
set noswapfile
" Allow smarter completion by infering the case
set infercase
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Makes search act like search in modern browsers
set incsearch
" Don't redraw while executing macros (good performance config)
set lazyredraw
" Show matching brackets when text indicator is over them
set showmatch

let winManagerWidth = 30
let winManagerWindowLayout = 'FileExplorer|TagList'

let MRU_Max_Entries=30
let g:molokai_original=1
colorscheme molokai


" Open Tagbar brower
nmap <C-d> :TagbarToggle<CR>
let g:tagbar_left=0
let g:tagbar_autoshowtag=1
