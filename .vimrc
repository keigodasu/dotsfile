"**************************************
" プラグイン設定
"**************************************

filetype off

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" neobundle.vimの初期化 
call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundleを更新するための設定
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'vim-jp/vimdoc-ja'

NeoBundle 'stephpy/vim-yaml'

NeoBundle 'thinca/vim-quickrun'

NeoBundle 'junegunn/seoul256.vim'

NeoBundle 'scrooloose/nerdtree'
nnoremap <silent><C-e> :NERDTree<CR>

"インデントに色を付けて見やすくするやつ
NeoBundle 'nathanaelkane/vim-indent-guides'
"vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

"NeoBundle 'kana/vim-smartinput'

"Vimでの日本語入力・編集用に別コマンドを割り当てる
NeoBundle 'deton/imactivatemap.vim'
"
"unit.vimーーーー
NeoBundle 'Shougo/unite.vim'
"
"markdown関連の設定
NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
"" markdownの拡張子を追加
au BufRead,BufNewFile *.md set filetype=markdown

"Docker用のシンタックス
NeoBundle 'ekalinin/Dockerfile.vim'

NeoBundle 'vim-scripts/buftabs'
" バッファタブにパスを省略してファイル名のみ表示する
"let g:buftabs_only_basename=1
" バッファタブをステータスライン内に表示する
"let g:buftabs_in_statusline=1 ステータスライン表示するやつと競合しているか"も？
" 現在のバッファをハイライト
"let g:buftabs_active_highlight_group="Visual"
"" next buffer
"nmap <C-n> :bn<CR>
"" back buffer
"nmap <C-p> :bp<CR>


"補完系のやーつ
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

"serverspecのスニペット
NeoBundle 'glidenote/serverspec-snippets'

"golang系の設定
NeoBundle 'fatih/vim-go'
NeoBundle 'vim-jp/vim-go-extra'
NeoBundle 'Blackrush/vim-gocode'
set rtp+=$GOROOT/misc/vim
let g:go_bin_path = expand("C:/go/bin")
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

"ステータスラインをかっこよくするプラグインと設定
NeoBundle 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'wombat'
      \ }

" ファイラー系の設定
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
"NeoBundle 'Shougo/vimproc'

"Git関連の設定
NeoBundle 'tpope/vim-fugitive'

"メモをとるようのプラグイン
NeoBundle 'glidenote/memolist.vim'
let g:memolist_memo_suffix = "md"

"Rubyでendを自動で閉じるやつ
NeoBundle 'tpope/vim-endwise'

NeoBundleCheck
call neobundle#end()

filetype plugin indent on


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
set expandtab
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
set clipboard=unnamed,autoselect
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
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

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
