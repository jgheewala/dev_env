" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.

call pathogen#infect()

syntax enable
filetype plugin on  
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1 
let g:go_highlight_interfaces = 1
let g:go_highlight_build_constraints = 1  

" nerd tree

"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
"   exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
"    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
"endfunction
"
"call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
"call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
"let g:NERDTreeWinPos = "right"
"let g:NERDTreeWinSize=70
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

" enable neocomplete 
let g:neocomplete#enable_omni_fallback=0
"let g:neocomplete#enable_at_startup = 1

" tabbar.vim customization. Choose the buffer on single mouse click
let g:Tb_UseSingleClick = 1

" for Taglist.vim: choose single mouse click to select a tag
let Tlist_Use_SingleClick = 1

set selectmode=mouse

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
set paste
" For switching between files inside gvim
map <C-n> : bn<CR>
map <C-p> : bp<CR>

" Open nerdtree browers
map <C-a> :NERDTreeToggle<CR>


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

map <F7>    :cn<CR>
map <F8>    :cp<CR>
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


"   CScope definitions
"if has('cscope')
" set cscopetag cscopeverbose

 " if has('quickfix')
 "   set cscopequickfix=s-,c-,d-,i-,t-,e-
"  endif

"  cnoreabbrev csa cs add
"  cnoreabbrev csf cs find
"  cnoreabbrev csk cs kill
"  cnoreabbrev csr cs reset
"  cnoreabbrev css cs show
"  cnoreabbrev csh cs help
"
"  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
"endif

"if has("cscope")
"        set csprg=/router/bin/cscope
"        set csto=1                      " Search tag files before using cscope.
""       set nocsverb                    " No verbose
"        set csverb                      " Turn on verbose now

        " Use either cst or the other mappings below.
        " set cst                         " Use cscope for tag related commands.

"        nmap <Leader>K :cstag <C-R>=expand("<cword>")<CR><CR>
"        map <C-_> :cstag <C-R>=expand("<cword>")<CR><CR>
"        " Find this definition
"        map g<C-]> :cs find g <C-R>=expand("<cword>")<CR><CR>
"        " Function calling this one
"        map g<C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>
"        " Find this file.
"        map g<C-f> :cs find f <C-R>=expand("<cword>")<CR><CR>
"        map g<C-d> :cs find s <C-R>=expand("<cword>")<CR><CR>
"
"        " misc
"        map <C-K>     :cs add /vob/ios/sys /vob/ios/sys<CR>
"
"        cmap csadd    cscope add /vob/ios/sys /vob/ios/sys
"        cmap gf       cs find f
"        cmap csf      cs find
"endif

"   When using gf, return to same line and column
noremap gf gf'"

iabbr msb <Home>/* --msr: changes begin <C-R>=strftime("%c")<CR> */
iabbr mse <Home>/* --msr: changes end <C-R>=strftime("%c")<CR> */
iabbr tbd /* --msr TODO: 

cabbr  ct !cleartool 


"   Timestamps
"   date short:                                 971120
 iab Yds    <C-R>=strftime("%y%m%d")<CR>
"   date long:                                  Thu 20 Nov 1997
 iab Ydl    <C-R>=strftime("%a %d %b %Y")<CR>
"   date and time short:                        971120 02:27:51 
 iab Ydts   <C-R>=strftime("%y%m%d %H:%M:%S")<CR>
"   date and time long:                         Thu Nov 20 02:28:05 1997
 iab Ydtl   <C-R>=strftime("%c")<CR>
"   Now a mapping for updating a "Last update: " entry (from bottom):
 nmap ,LU   G?[Ll]ast [Uu]pdate:\\s\\+?e<CR>lC<C-R>=strftime("%c")<CR><ESC>
"
"   The alphabet
 iab Yalpha abcdefghijklmnopqrstuvwxyz
 iab YALPHA ABCDEFGHIJKLMNOPQRSTUVWXYZ
"
"   The didgits
 iab Ydigit 1234567890
 iab Yruler 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890

" Location of the ctags shipped with VIM
" let VimCtags = "/usr/bin/ctags"

" let sfname = "/tmp/" . $USER . "_vim_func"
" let cmd_append = VimCtags . " --format=0 --c-types=f -u -f - -L - | awk '{printf \"execute \\\"nmenu \\\" . escape(\\\"F&unctions.\" $1;j=index($0, $3); print \" :0 \" substr($0, j, length($0) - j) \"<CR>\\\", \\\"*\\\")\";}' > " . sfname

" F5: Add a fortune and advance to the next one
" mX			mark where we are
" :sp ~/.fortunes<CR>	open a window on ~/.fortunes
" d/^--/<CR>		delete until the next line starting with "--"
" Gp			Go to the end and put the just deleted text there
" :wq<CR>		Write the ~/.fortunes file and close the window
" 'XG			Go to the last line of the original file
" A<CR><Esc>		Add an empty line
" p			put the fortune text
" `X			return to where we started

map <F5> mX:sp ~/.fortunes<CR>d/^--/<CR>Gp:wq<CR>'XGA<CR><Esc>p`X
"autocmd BufEnter *.c,*.h vertical resize 80
" autocmd WinEnter *.c,*.h vertical set columns=161

nnoremap <silent> <F3> :Lid <C-R><C-W><CR>
let LID_Cmd = 'lid32'

" Mini explorer stuff
" map <Leader>m :MiniBufExplorer<cr>
" map <Leader>c :CMiniBufExplorer<cr>
" map <Leader>u :UMiniBufExplorer<cr>
map <Leader>t :TMiniBufExplorer<cr>
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let g:miniBufExplUseSingleClick = 1
set tags=tags;

"autocmd Filetype mail set tw=72 et nocindent noai formatoptions=tcq

" to eliminate swap file creation
set maxmem=20971520
set noswapfile

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

let winManagerWidth = 30
let winManagerWindowLayout = 'FileExplorer|TagList'

let MRU_Max_Entries=30
let g:molokai_original=1
colorscheme proton
"colorscheme molokai
"colorscheme solarized

