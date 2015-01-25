" #######################################################################################
" neobundle設定
" #######################################################################################
" vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期化 
call neobundle#rc(expand('~/.vim/bundle'))

" NeoBundleを更新するための設定
NeoBundleFetch 'Shougo/neobundle.vim'

" ---------------------------------------------------------------------------------------
" neobundle plugins
" ---------------------------------------------------------------------------------------
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'scrooloose/nerdtree'

" Ruby向けにendを自動挿入してくれる
" NeoBundle 'tpope/vim-endwise'

" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

NeoBundle 'kana/vim-smartinput'

" Vimでの日本語入力・編集用に別コマンドを割り当てる
NeoBundle 'deton/imactivatemap.vim'

" ファイラー
NeoBundle 'Shougo/unite.vim'

" markdown関連
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
" markdownの拡張子を追加
au BufRead,BufNewFile *.md set filetype=markdown

" Syntax of DockerFile
NeoBundle 'ekalinin/Dockerfile.vim'

" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on

" インストールのチェック
NeoBundleCheck

if !has('vim_starting')
  " ._gvimrcを読み直した際の設定
  call neobundle#call_hock('on_source')
endif

" Unified color scheme (default: dark)
colo seoul256

" Switch
set background=dark
""""""""""""""""""""""""""""""

" #######################################################################################
" 各種設定
" #######################################################################################
" スワップファイルを利用しない
set noswapfile
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

