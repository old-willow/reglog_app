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
inoremap << <><Left>
inoremap </ </><Left>
inoremap <im <img src="" />3hi
inoremap <p <p></p>3hi
inoremap <d <div></div>5hi
inoremap <u <u></u><Up>
inoremap <i <i></i>3hi
inoremap <in <input type="" />3hi
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
set clipboard=unnamedplus
set completeopt=longest,menuone
set directory=./.swap,~/tmp
set expandtab
set fileencodings=utf-8,ucs-bom,latin2
set fillchars=vert:|,fold:~,diff:-
set foldlevelstart=0
set formatoptions=cq
set guifont=courier_new:h10
set helplang=en
set hidden
set history=1000
set hlsearch
set iminsert=0
set imsearch=0
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
set textwidth=120
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
badd +1 reglog_app/settings.py
badd +1 reglog_app/urls.py
badd +1 home/views.py
badd +1 login/views.py
badd +1 login/models.py
badd +1 login/forms.py
badd +1 login/urls.py
badd +1 login/templates/login/login-index.html
badd +1 templates/form_base.html
badd +1 register/templates/register/working_register_template.html
badd +1 login/templates/login/password_reset_email.html
badd +1 login/templates/login/password_reset_complete.html
badd +1 login/templates/login/password_reset_confirm.html
badd +1 home/templates/home/index.html
badd +1 ~/.vimrc
badd +1 static/css/style.css
badd +1 ~/venv/reglog-app/lib/python2.7/site-packages/django/contrib/admin/templates/registration/password_reset_confirm.html
badd +1 ~/venv/reglog-app/lib/python2.7/site-packages/django/contrib/auth/views.py
badd +1 ~/venv/reglog-app/lib/python2.7/site-packages/django/contrib/auth/tokens.py
badd +1 ~/venv/reglog-app/lib/python2.7/site-packages/django/contrib/sites/shortcuts.py
badd +1 test_reset/urls.py
badd +0 test_reset/views.py
badd +0 test_reset/templates/test_reset/index.html
argglobal
silent! argdel *
argadd reglog_app/settings.py
set stal=2
edit reglog_app/settings.py
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 33 + 35) / 71)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 30 + 35) / 71)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 33 + 35) / 71)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
exe '4resize ' . ((&lines * 30 + 35) / 71)
exe 'vert 4resize ' . ((&columns * 119 + 119) / 239)
exe '5resize ' . ((&lines * 3 + 35) / 71)
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
setlocal balloonexpr=
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
let s:l = 49 - ((19 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 0
wincmd w
argglobal
edit test_reset/urls.py
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
setlocal balloonexpr=
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
let s:l = 2 - ((1 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 09|
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
setlocal balloonexpr=
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
setlocal statusline=%!pyeval('powerline.statusline(3)')
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
let s:l = 17 - ((16 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 05|
wincmd w
argglobal
edit login/urls.py
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
setlocal balloonexpr=
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
setlocal statusline=%!pyeval('powerline.statusline(4)')
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
let s:l = 38 - ((17 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 09|
wincmd w
argglobal
enew
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=wipe
setlocal buflisted
setlocal buftype=quickfix
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
if &filetype != 'qf'
setlocal filetype=qf
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
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
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
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
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
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
setlocal statusline=%!pyeval('powerline.statusline(27)')
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=300
if &syntax != 'qf'
setlocal syntax=qf
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal winfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
wincmd w
exe '1resize ' . ((&lines * 33 + 35) / 71)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 30 + 35) / 71)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 33 + 35) / 71)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
exe '4resize ' . ((&lines * 30 + 35) / 71)
exe 'vert 4resize ' . ((&columns * 119 + 119) / 239)
exe '5resize ' . ((&lines * 3 + 35) / 71)
tabedit home/views.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 34 + 35) / 71)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 33 + 35) / 71)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
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
setlocal balloonexpr=
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
setlocal foldlevel=1
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
setlocal statusline=%!pyeval('powerline.statusline(5)')
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
let s:l = 2 - ((1 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 02|
wincmd w
argglobal
edit test_reset/views.py
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
setlocal balloonexpr=
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
setlocal statusline=%!pyeval('powerline.statusline(6)')
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
6
normal! zo
let s:l = 2 - ((1 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 029|
wincmd w
argglobal
edit test_reset/templates/test_reset/index.html
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
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
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %% {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
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
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
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
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(24)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 5 - ((4 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 074|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 34 + 35) / 71)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 33 + 35) / 71)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
tabedit login/views.py
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
setlocal balloonexpr=
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
setlocal foldlevel=1
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
setlocal statusline=%!pyeval('powerline.statusline(7)')
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
let s:l = 148 - ((64 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
148
normal! 0
wincmd w
argglobal
edit login/forms.py
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
setlocal balloonexpr=
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
setlocal foldlevel=2
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
setlocal statusline=%!pyeval('powerline.statusline(8)')
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
14
normal! zo
39
normal! zo
90
normal! zo
let s:l = 101 - ((47 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
101
normal! 05|
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabedit login/templates/login/login-index.html
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
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
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
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %% {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
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
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
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
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(9)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 66 - ((58 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
66
normal! 0
wincmd w
argglobal
edit templates/form_base.html
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
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
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %% {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
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
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
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
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(10)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 58 - ((57 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
58
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabedit register/templates/register/working_register_template.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 79 + 119) / 239)
exe '2resize ' . ((&lines * 33 + 35) / 71)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe '3resize ' . ((&lines * 34 + 35) / 71)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
exe 'vert 4resize ' . ((&columns * 79 + 119) / 239)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
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
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %% {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
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
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
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
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(11)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 127 - ((64 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
127
normal! 0
wincmd w
argglobal
edit login/templates/login/password_reset_complete.html
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
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
inoremap <buffer> %% {%  %}2hi
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %l {% else %}
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
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
if &filetype != 'html'
setlocal filetype=html
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
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
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(12)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 14 - ((6 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
wincmd w
argglobal
edit login/templates/login/password_reset_email.html
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
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
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %% {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
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
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
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
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(13)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit login/templates/login/password_reset_confirm.html
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
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
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %% {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
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
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
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
setlocal statusline=%!pyeval('powerline.statusline(14)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal wrap
setlocal wrapmargin=0
let s:l = 33 - ((32 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 010|
wincmd w
exe 'vert 1resize ' . ((&columns * 79 + 119) / 239)
exe '2resize ' . ((&lines * 33 + 35) / 71)
exe 'vert 2resize ' . ((&columns * 79 + 119) / 239)
exe '3resize ' . ((&lines * 34 + 35) / 71)
exe 'vert 3resize ' . ((&columns * 79 + 119) / 239)
exe 'vert 4resize ' . ((&columns * 79 + 119) / 239)
tabedit static/css/style.css
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
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
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
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal comments=s1:/*,mb:*,ex:*/
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
if &filetype != 'css'
setlocal filetype=css
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=
setlocal includeexpr=
setlocal indentexpr=GetCSSIndent()
setlocal indentkeys=0{,0},!^F,o,O
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
setlocal omnifunc=csscomplete#CompleteCSS
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(15)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'css'
setlocal syntax=css
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 72 - ((33 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
72
normal! 0
wincmd w
argglobal
edit ~/venv/reglog-app/lib/python2.7/site-packages/django/contrib/admin/templates/registration/password_reset_confirm.html
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
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
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %% {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
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
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
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
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
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
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(16)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 15 - ((14 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/venv/reglog-app/lib/python2.7/site-packages/django/contrib/auth/views.py
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
setlocal balloonexpr=
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
setlocal foldlevel=1
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
setlocal nolinebreak
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
setlocal statusline=%!pyeval('powerline.statusline(17)')
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
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 214 - ((44 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
214
normal! 044|
wincmd w
argglobal
edit ~/venv/reglog-app/lib/python2.7/site-packages/django/contrib/auth/tokens.py
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
setlocal balloonexpr=
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
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
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
setlocal nolinebreak
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
setlocal statusline=%!pyeval('powerline.statusline(18)')
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
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 26 - ((20 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 032|
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
tabedit ~/venv/reglog-app/lib/python2.7/site-packages/django/contrib/sites/shortcuts.py
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
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
setlocal balloonexpr=
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
setlocal foldlevel=1
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
setlocal nolinebreak
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
setlocal statusline=%!pyeval('powerline.statusline(19)')
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
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 13 - ((12 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
tabnext 2
set stal=1
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
