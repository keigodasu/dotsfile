"dein Scripts-----------------------------
"if &compatible
"  set nocompatible               " Be iMproved
"endif
set nocompatible               " Be iMproved

" Required:
set runtimepath+=~/.vim/dein//repos/github.com/Shougo/dein.vim

" Required: 
if dein#load_state('~/.vim/dein/')
  call dein#begin('~/.vim/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')

  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  call dein#add('scrooloose/nerdtree')

  call dein#add('vim-airline/vim-airline')

  call dein#add('ctrlpvim/ctrlp.vim')

  call dein#add('thinca/vim-quickrun')

  call dein#add('Shougo/neocomplete.vim')

  call dein#add('Townk/vim-autoclose')

  call dein#add('Yggdroot/indentLine')

  "call dein#add('ervandew/supertab')

  call dein#add('glidenote/memolist.vim')

  call dein#add('tpope/vim-fugitive')

  call dein#add('dag/vim-fish')

  call dein#add('itchyny/calendar.vim')

  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('tacahiroy/ctrlp-funky')
  call dein#add('suy/vim-ctrlp-commandline')

  call dein#add('majutsushi/tagbar')
  call dein#add('lvht/tagbar-markdown')
  call dein#add('wesleyche/SrcExpl')

  call dein#add('h1mesuke/vim-alignta')
  " Complete
  "call dein#add('Shougo/deoplete.nvim')

  " Docker
  call dein#add('ekalinin/Dockerfile.vim')

  " color scheme
  call dein#add('dracula/vim')
  call dein#add('sjl/badwolf')

  " markdwon
  call dein#add('tpope/vim-markdown')
  call dein#add('kannokanno/previm')
  call dein#add('tyru/open-browser.vim')
  call dein#add('rhysd/vim-gfm-syntax')

  call dein#add('stephpy/vim-yaml')

  " Python
  
  call dein#add('davidhalter/jedi-vim')

  " JavaScript
  call dein#add('mattn/jscomplete-vim')
  call dein#add('pangloss/vim-javascript')

  " Node.js
  call dein#add('myhere/vim-nodejs-complete')

  " golang
  call dein#add('fatih/vim-go')
  call dein#add('nsf/gocode')
  call dein#add('jodosha/vim-godebug')

  " Rust
  call dein#add('racer-rust/vim-racer')
  call dein#add('rust-lang/rust.vim')
  call dein#add('scrooloose/syntastic')

  " scala
  call dein#add('derekwyatt/vim-scala')

  " Terraform
  call dein#add('hashivim/vim-terraform')
  "call dein#add('vim-syntastic/syntastic')
  call dein#add('juliosueiras/vim-terraform-completion')

  " slide tool (marp)
  call dein#add('dhruvasagar/vim-marp')

  call dein#add('LeafCage/yankround.vim')

  call dein#add('keigodasu/vim-plugin')

  call dein#add('aklt/plantuml-syntax')

  call dein#add('vitalk/vim-simple-todo')

  call dein#add('mnick/vim-pomodoro')

  call dein#add('deanashton/vim-deckset')

  call dein#add('vim-scripts/Vim-R-plugin')

  " ReVIEW
  call dein#add('moro/vim-review')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"**************************************************
" 'myhere/vim-nodejs-complete'
" http://qiita.com/toshihirock/items/39ee62ddee2eb997f7b7
" http://qiita.com/ykyk1218/items/ab1c89c4eb6a2f90333a
"**************************************************
autocmd FileType javascript setlocal omnifunc=nodejscomplete#CompleteJS
" TODO:neocomplcache -> neocomplete向けに設定を変更
if !exists('g:neocomplete_omni_input_patterns')
  let g:neocomplete_omni_input_patterns = {}
endif
let g:neocomplete_omni_input_patterns.javascript = 'nodejscomplete#CompleteJS'
let g:node_usejscomplete = 1
"----------------
" deoplete
"----------------
let g:deoplete#enable_at_startup = 0
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
"call deoplete#initialize()
let g:terraform_fmt_on_save=1
let g:terraform_align=1
let g:terraform_remap_spacebar=1

"----------------
" tagbar
"----------------
let g:tagbar_left = 0
let g:tagbar_autofocus = 1

"----------------
" glidenote/memolist.vim
"----------------
let g:memolist_memo_suffix = "md"
"" markdownの拡張子を追加
au BufRead,BufNewFile *.md set filetype=markdown

"----------------
" kien/ctrlp.vim
"----------------
let g:ctrlp_match_window = 'left'

"----------------
" mattn/calendar-vim
"----------------
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

"----------------
" Neocomplete
" https://github.com/Shougo/neocomplete.vim
"----------------
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 0
" Use smartcase.
let g:neocomplete#enable_smart_case = 0
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

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
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" 補完候補が出ていたら確定、なければ改行
inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "<CR>"
let g:neocomplete#max_list = 20
" 補完候補の一番先頭を選択状態にする(AutoComplPopと似た動作)
let g:neocomplete#enable_auto_select = 1
"
"----------------
" Terraform
"----------------
let g:terraform_fmt_on_save = 1

"----------------
" Neocomplete
"----------------
" Plugin key-mappings.  " <C-k>でsnippetの展開
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

"----------------
" yankround
"----------------
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)

"----------------
" Golang
"**************************************
"----------------
" vim-go
"----------------
let g:go_fmt_command = "goimports"
let g:godef_split=1
let g:go_fmt_autosave = 1
let g:go_metalinter_autosave = 1
let g:go_hightlight_functions = 1
let g:go_hightlight_methods = 1
let g:go_hightlight_structs = 1
let g:go_hightlight_interfaces = 1
let g:go_hightlight_operators = 1
let g:go_hightlight_build_constraints = 1

au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gC <Plug>(go-coverage)

au FileType go nmap <Leader>gg <Plug>(go-def)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-vec)
au FileType go nmap <Leader>gi <Plug>(go-info)
au FileType go nmap <Leader>gr :<c-u>GoReferrers<cr>
au FileType go nmap <Leader>gI <Plug>(go-implements)

au FileType go nmap <Leader>gR <Plug>(go-rename)
au FileType go nmap <Leader>ga :<c-u>GoAlternate<cr>

"----------------
" others
"----------------
augroup golang
  autocmd!
  autocmd BufNewFile,BufRead *.go setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END


augroup review
  autocmd!
  autocmd BufNewFile,BufRead *.re setlocal tabstop=4 shiftwidth=4 noexpandtab
augroup END

let g:go_gocode_unimported_packages = 1
let g:neocomplete#sources#omni#input_patterns.go = '\h\w\.\w*'


"**************************************
" Scala
"**************************************
au BufNewFile,BufRead *.scala setf scala

"**************************************
" HTML
"**************************************
autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html

"**************************************
" NERDTree
"**************************************
let g:NERDTreeShowBookmarks=1 "起動時にBookmarkを表示
nnoremap <silent> tr :NERDTree<CR>"

"**************************************
" 基本設定
"**************************************
"文字コード
:set fileencoding=utf-8
:set fileformat=unix
" スワップファイルを利用しない
set noswapfile
"バックアップファイル作成しない
set nobackup
"
set nowb
"ウィドウのタイトルバーにファイルパス情報を表示する
set title
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" タブ入力を複数の空白入力に置き換える
set expandtab
" 行番号を表示する
set number
" タブ文字の表示幅
set tabstop=2
" 背景を透明にする
"set transparency=220
" タブ入力を複数の空白入力に置き換える
set expandtab
" 改行時に前の行のインデントを継続する
set autoindent
" Vimが挿入するインデントの幅
set shiftwidth=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
"ヤンクしたデータをクリップボードで使用＆選択範囲自動コピー
"set clipboard=unnamed,autoselect
" ステータスラインの色
highlight StatusLine term=bold cterm=bold ctermfg=black ctermbg=white
" Enable folding.
set foldenable
" set foldmethod=expr
set foldmethod=marker
" Enable syntax highlighting
syntax enable
"インクリメンタルサーチ
set incsearch
" 不可視文字表示
set list
"ステータスライン
set statusline=%f%m%=%l,%c\ %{'['.(&fenc!=''?&fenc:&enc).']\ ['.&fileformat.']'}
" ステータスラインを常に表示
set laststatus=2
"タブとかを可視化
set listchars=tab:>\ \,trail:_,extends:>,precedes:<
"横スクロールバーを表示する
set guioptions+=b
" 検索関連の設定
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索文字列入力時に順次対象文字列にヒットさせない
set noincsearch
" Esc連打で検索時にハイライトを消す
nnoremap <Esc><Esc> :nohlsearch<CR>
" ルーラーを表示
set ruler
" 入力中のコマンドをステータスに表示する
set showcmd
" 括弧入力時の対応する括弧を表示
set showmatch
" コマンド、検索パターンを50個まで履歴に残す
set history=50
" 256色化
set t_Co=256
" 暗い背景色に合わせた配色にする
set background=dark
" 保存されていないファイルがあるときでも別のファイルを開けるようにする
set hidden
" 行番号の色
highlight LineNr ctermfg=green

""""""""""""""""""""""""""""""
" LeaderをSpaceに変更
""""""""""""""""""""""""""""""
let mapleader = "\<Space>"


"**************************************
" キーのリマップ
"**************************************

""""""""""""""""""""""""""""""
" <Leader>* によるキーバインドをスペースに変更
" http://easyramble.com/vim-leader-space-vimrc.html
""""""""""""""""""""""""""""""
let mapleader = "\<Space>"
""""""""""""""""""""""""""""""
" コマンド履歴を<C->で変更
""""""""""""""""""""""""""""""
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

""""""""""""""""""""""""""""""
" タブ操作の設定
""""""""""""""""""""""""""""""
map <Leader>tn :tabnew <CR>
map <Leader>te :tabedit
map <Leader>tc :tabclose<CR>
map <Leader>tm :tabmove
nnoremap <C-n>   gt
nnoremap <C-p>   gT
"" カーソルキーでのウィンドウサイズ変更 TODO:みなおし！！！！
nnoremap <silent><C-j>  <C-w>-
nnoremap <silent><C-k>    <C-w>+
nnoremap <silent><C-h>  <C-w><
nnoremap <silent><C-l> <C-w>> カーソルキーでのウィンドウサイズ変更

""""""""""""""""""""""""""""""
" PlantUML
""""""""""""""""""""""""""""""
au FileType plantuml command! OpenUml :!open -a "Google Chrome" %

""""""""""""""""""""""""""""""
" ファイル編集
""""""""""""""""""""""""""""""
"ファイル保存
nnoremap <Leader>w :w<CR>
"ファイルを閉じる
nnoremap <Leader>q :q<CR>

""""""""""""""""""""""""""""""
" Escの変更
""""""""""""""""""""""""""""""
imap <C-j> <C-[>

""""""""""""""""""""""""""""""
" 便利系ショートカット
""""""""""""""""""""""""""""""
"タイムスタンプを挿入してinsertモードへ移行
nmap <F6> <ESC>i<C-R>=strftime("%Y/%m/%d (%a) %H:%M")<CR><CR>

set encoding=utf-8
"#set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac

""""""""""""""""""""""""""""""
" カラーテーマ 
""""""""""""""""""""""""""""""
"colorscheme dracula
colorscheme badwolf

""""""""""""""""""""""""""""""
" 日本語入力の設定
" 参考) http://qiita.com/ssh0/items/9e7f0d8b8f033183dd0b
""""""""""""""""""""""""""""""
" 日本語入力がオンのままでも使えるコマンド(Enterキーは必要)
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy
nnoremap ア A
" jjでエスケープ
inoremap <silent> jj <ESC>
" 日本語入力で”っj”と入力してもEnterキーで確定させればインサートモードを抜ける
inoremap <silent> っj <ESC>
" 入力モードでのカーソル移動
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>
inoremap <C-@> <C-x><C-o>

function! s:open_kobito(...)
    if a:0 == 0
        call system('open -a Kobito '.expand('%:p'))
    else
        call system('open -a Kobito '.join(a:000, ' '))
    endif
endfunction

" 引数のファイル(複数指定可)を Kobitoで開く
" （引数無しのときはカレントバッファを開く
command! -nargs=* Kobito call s:open_kobito(<f-args>)
" KoooColCooslCooslCoeo sclaCloeo scll asCystem("osalsoceroi spctl l- ea s'Ctell applyisctation \"Kobito\" to quit'")
" Kobito にフォーカスを移す
command! -nargs=0 KobitoFocus call system("osascript -e 'tell application \"Kobito\" to activate'")

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

" jqによる整形
command! -nargs=? Jq call s:Jq(<f-args>)
function! s:Jq(...)
  if 0 == a:0
    let l:arg = "."
  else
    let l:arg = a:1
  endif
  execute "%! jq \"" . l:arg . "\""
endfunction

let g:python3_host_prog  = '/usr/local/Cellar/python3/3.6.2/bin/python3'

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0

let g:syntastic_python_checkers = ["flake8"]

"let g:deoplete#enable_at_startup = 1
"let g:deoplete#auto_complete_delay = 0
"let g:deoplete#auto_complete_start_length = 1
"let g:deoplete#enable_camel_case = 0
"let g:deoplete#enable_ignore_case = 0
"let g:deoplete#enable_refresh_always = 0
"let g:deoplete#enable_smart_case = 1
"let g:deoplete#file#enable_buffer_path = 1
"let g:deoplete#max_list = 10000
