let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <Down> <Nop>
inoremap <Up> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>
noremap ru :call RopeUseFunction()
noremap rad :call RopeShowDoc()
noremap rac :call RopeShowCalltip()
noremap rx :call RopeRestructure()
noremap r1r :call RopeRenameCurrentModule()
noremap rr :call RopeRename()
noremap ro :call RopeOrganizeImports()
noremap r1v :call RopeMoveCurrentModule()
noremap rv :call RopeMove()
noremap r1p :call RopeModuleToPackage()
noremap ra? :call RopeLuckyAssist()
noremap raj :call RopeJumpToGlobal()
noremap rf :call RopeIntroduceFactory()
noremap ri :call RopeInline()
noremap rag :call RopeGotoDefinition()
noremap rnv :call RopeGenerateVariable()
noremap rnp :call RopeGeneratePackage()
noremap rnm :call RopeGenerateModule()
noremap rnf :call RopeGenerateFunction()
noremap rnc :call RopeGenerateClass()
noremap raf :call RopeFindOccurrences()
noremap rai :call RopeFindImplementations()
noremap rl :call RopeExtractVariable()
noremap rm :call RopeExtractMethod()
noremap ra/ :call RopeCodeAssist()
noremap rs :call RopeChangeSignature()
noremap ra :call RopeAutoImport()
nnoremap <silent>  :CtrlP
nmap o <Plug>ZoomWin
noremap pu :call RopeUndo()
noremap pr :call RopeRedo()
noremap pc :call RopeProjectConfig()
noremap po :call RopeOpenProject()
noremap pg :call RopeGenerateAutoimportCache()
noremap p4f :call RopeFindFileOtherWindow()
noremap pf :call RopeFindFile()
noremap pnp :call RopeCreatePackage()
noremap pnm :call RopeCreateModule()
noremap pnf :call RopeCreateFile()
noremap pnd :call RopeCreateDirectory()
noremap pk :call RopeCloseProject()
map ,t <Plug>TaskList
vnoremap ,g :call GrepOperator(visualmode())
nnoremap ,g :set operatorfunc=GrepOperatorg@
nnoremap ,  i <Right>a <Left>
vnoremap ,ss `>a"`<i"
vnoremap ,s `>a'`<i'
nnoremap ,ll I"A"
nnoremap ,l I'A'
nnoremap ,ww ea"bi"
nnoremap ,w ea'bi'
nnoremap ,sv :source $MYVIMRC
nnoremap ,rc :vsp $MYVIMRC
nnoremap ,= O<Down>o<Up>
nnoremap ,_ dd<Up>P
nnoremap ,- ddp
vnoremap < <gv
vnoremap > >gv
nnoremap H :tabprevious
nnoremap L :tabnext
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap sa ggVG
nnoremap ttd :tabclose
nnoremap ttn :tabnew
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>SIG_PurgeMarkers :call signature#PurgeMarkers()
nnoremap <silent> <Plug>SIG_PrevMarkerByType :call signature#GotoMarker("prev")
nnoremap <silent> <Plug>SIG_NextMarkerByType :call signature#GotoMarker("next")
nnoremap <silent> <Plug>SIG_PrevLineByPos :call signature#GotoMark("pos", "prev", "line")
nnoremap <silent> <Plug>SIG_NextLineByPos :call signature#GotoMark("pos", "next", "line")
nnoremap <silent> <Plug>SIG_PrevSpotByPos :call signature#GotoMark("pos", "prev", "spot")
nnoremap <silent> <Plug>SIG_NextSpotByPos :call signature#GotoMark("pos", "next", "spot")
nnoremap <silent> <Plug>SIG_PrevLineByAlpha :call signature#GotoMark("alpha", "prev", "line")
nnoremap <silent> <Plug>SIG_NextLineByAlpha :call signature#GotoMark("alpha", "next", "line")
nnoremap <silent> <Plug>SIG_PrevSpotByAlpha :call signature#GotoMark("alpha", "prev", "spot")
nnoremap <silent> <Plug>SIG_NextSpotByAlpha :call signature#GotoMark("alpha", "next", "spot")
nnoremap <silent> <Plug>SIG_PurgeMarks :call signature#PurgeMarks()
nnoremap <silent> <Plug>SIG_PlaceNextMark :call signature#ToggleMark(",")
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
vnoremap <Down> <Nop>
vnoremap <Up> <Nop>
vnoremap <Right> <Nop>
vnoremap <Left> <Nop>
nnoremap <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
nnoremap <F4> :TlistToggle
inoremap  <Nop>
inoremap "" ""<Left>
inoremap # #
inoremap '' ''<Left>
inoremap ( ()O
inoremap (( ()<Left>
inoremap /* /**/<Left><Left> * <Up><Right><Right>
inoremap /** /*  */3<Left>a
inoremap [ []O
inoremap [[ []<Left>
inoremap kj 
inoremap { {}O
inoremap {{ {}<Left>
iabbr kr Kolozsi Róbert
iabbr k@ <robert.kolozsi@gmail.com>
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set backup
set backupdir=./.backup,~/tmp
set completeopt=longest,menuone
set directory=./.swap,~/tmp
set expandtab
set fileencodings=utf-8,ucs-bom,latin2
set fillchars=vert:|,fold:~,diff:-
set foldlevelstart=0
set formatoptions=cq
set helplang=en
set hidden
set history=1000
set hlsearch
set incsearch
set laststatus=2
set lazyredraw
set listchars=tab:→\ ,eol:⏎,extends:>,precedes:<
set matchtime=3
set modelines=1
set ruler
set runtimepath=~/.vim,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/python-mode,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-javascript,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-signature,~/opt/vim/share/vim/vimfiles,~/opt/vim/share/vim/vim74,~/opt/vim/share/vim/vimfiles/after,~/.vim/bundle/python-mode/after,~/.vim/after
set scrolloff=3
set shell=/bin/bash\ --login
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=4
set splitbelow
set splitright
set statusline=%!pyeval('powerline.new_window()')
set synmaxcol=300
set tabline=%!pyeval('powerline.tabline()')
set tabstop=4
set termencoding=utf-8
set textwidth=79
set title
set undodir=~/.vim/undodir
set undofile
set undoreload=1000
set updatetime=1000
set wildignore=*.pyc,*_build/*,*/coverage/*
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/web-dev/django_projects/reglog_app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 reglog_app/settings.py
badd +0 reglog_app/urls.py
argglobal
silent! argdel *
argadd reglog_app/settings.py
edit reglog_app/settings.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-Space> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <Nul> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <S-Tab> =RopeLuckyAssistInsertMode()
noremap <buffer> <silent> m :emenu Rope . 	
noremap <buffer> <silent> f :RopeFindOccurrences
noremap <buffer> <silent> d :RopeShowDoc
noremap <buffer> <silent> g :RopeGotoDefinition
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#Set(line('.'))
vnoremap <buffer> <silent> ,r :Pyrun
nnoremap <buffer> <silent> ,r :Pyrun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
map <buffer> E :w:!/usr/bin/env python % 
vnoremap <buffer> <silent> K :call pymode#doc#Show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#Show(expand('<cword>'))
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
map <buffer> gd /def 
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=pymode#folding#text()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=pymode#indent#Indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(1)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 34) / 69)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit reglog_app/urls.py
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <C-Space> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <Nul> =RopeCodeAssistInsertMode()
inoremap <buffer> <silent> <S-Tab> =RopeLuckyAssistInsertMode()
noremap <buffer> <silent> m :emenu Rope . 	
noremap <buffer> <silent> f :RopeFindOccurrences
noremap <buffer> <silent> d :RopeShowDoc
noremap <buffer> <silent> g :RopeGotoDefinition
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#Set(line('.'))
vnoremap <buffer> <silent> ,r :Pyrun
nnoremap <buffer> <silent> ,r :Pyrun
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
map <buffer> E :w:!/usr/bin/env python % 
vnoremap <buffer> <silent> K :call pymode#doc#Show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#Show(expand('<cword>'))
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|def\)\s', 'b')
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|def\)\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|def\)\s', '')
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
map <buffer> gd /def 
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=pymode#folding#expr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=pymode#folding#text()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=pymode#indent#Indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=RopeOmni
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(2)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
let s:l = 15 - ((14 * winheight(0) + 34) / 69)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
