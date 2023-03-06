set number "行番号の表示
set list "タブ、空白、改行を可視化
set title "編集中ファイル名の表示
set visualbell t_vb= "ビープ音を視覚表示
set laststatus=2 "ステータスを表示
set ruler "カーソル位置を表示
set ambiwidth=double "○や□などの文字が重ならないようにする
syntax on "コードに色をつける

"===== 文字、カーソル設定 =====
let mapleader = "\<Space>"
set fenc=utf-8 "文字コードを指定
set whichwrap=b,s,h,l,<,>,[,],~ "行頭、行末で行のカーソル移動を可能にする
set backspace=indent,eol,start "バックスペースでの行移動を可能にする
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮ "不可視文字の指定
set expandtab "タブをスペースに変換する
set autoindent "自動インデント
set smartindent "オートインデント
set virtualedit=onemore "カーソルを行末の一つ先まで移動可能にする
set tabstop=2 "インデントをスペース4つ分に設定
nnoremap ; :
inoremap <silent> jj <ESC>

"===== モードによってカーソルを変更 =====
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"===== マウス設定 =====
set mouse=a
set ttymouse=xterm2

"===== 検索設定 =====
set ignorecase "大文字、小文字の区別をしない
set smartcase "大文字が含まれている場合は区別する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch "検索した文字を強調
set incsearch "インクリメンタルサーチを有効にする

let g:sql_type_default = 'mysql'

set clipboard+=unnamed

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

                  " Required:
                  set runtimepath+=~/.vim/bundle/neobundle.vim/

                  " Required:
                  call neobundle#begin(expand('~/.vim/bundle/'))

                  " Let NeoBundle manage NeoBundle
                  " Required:
                  NeoBundleFetch 'Shougo/neobundle.vim'

                  " My Bundles here:
                  " Refer to |:NeoBundle-examples|.
                  " Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'goerz/jupytext.vim'

                  call neobundle#end()

                  " Required:
                  filetype plugin indent on

                  " If there are uninstalled bundles found on startup,
                  " this will conveniently prompt you to install them.
                  NeoBundleCheck

"==== Plugins ====
" セルの区切り文字をVSCode互換の # %% に指定する
let g:jupytext_fmt = 'py:percent'
" vimのPython向けシンタックスハイライトを有効にする
let g:jupytext_filetype_map = {'py': 'python'}

au BufRead,BufNewFile *.md set filetype=markdown
