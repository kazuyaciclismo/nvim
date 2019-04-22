if &compatible
  " vi互換モードで動作させない
  set nocompatible 
endif

"  行番号を表示
set number

" 対応する括弧やブレースを表示
set showmatch

"  検索文字に大文字と小文字混在した時だけ区別
set smartcase

"  大文字と小文字を区別しない
set ignorecase

"  インクリメンタルサーチ
set incsearch

"  検索文字をハイライト
set hlsearch

" カーソルライン
set cursorline

"  行頭の余白内でタブを打つとshiftwidthだけインデント
set smarttab

"  改行時に入力された行の末尾に合わせて次の行のインデントを増減
set smartindent

" 自動で挿入されるインデントのスペース幅
set shiftwidth=8

"  画面上でタブ文字が占める幅
set tabstop=8

"  tabキーを押したときに挿入されるスペースの量
set softtabstop=0

"  タブ入力を複数の空白に置き換える
set expandtab

"  マウス有効
set mouse=a

"  swpファイルを作らない
set noswapfile

"  backupファイルを作らない
set nobackup

"  エンコーディング: UTF-8
set enc=utf-8

"  左右比較表示
set diffopt=vertical

"  コマンドライン行数
set cmdheight=1

" yank した文字列をクリップボードにコピー
set clipboard=unnamed  

" key map ......................................
nnoremap <C-g> :Gtags
nnoremap <C-h> :Gtags -f %<CR>
nnoremap <C-j> :GtagsCursor<CR>

map <C-n> :cn<CR>
map <C-p> :cp<CR>

nnoremap [git]  <Nop>
nmap     <Space>g [git]
nnoremap <silent> [git]s :Gstatus<CR>
nnoremap <silent> [git]d :Gdiff<CR>

" for autocmd ......................................
" https://qiita.com/s_of_p/items/b61e4c3a0c7ee279848a
augroup MyAutoCmd
    autocmd!
augroup END

" 環境変数 
let $CACHE  = empty($XDG_CACHE_HOME)  ? expand('$HOME/.cache')       : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config')      : $XDG_CONFIG_HOME
let $DATA   = empty($XDG_DATA_HOME)   ? expand('$HOME/.local/share') : $XDG_DATA_HOME
let g:python3_host_prog = expand('~/.pyenv/versions/3.7.3/bin/python')

" Load rc file
function! s:load(file) abort
    let s:path = expand('$CONFIG/nvim/rc/' . a:file . '.vim')

    if filereadable(s:path)
        execute 'source' fnameescape(s:path)
    endif
endfunction

call s:load('plugins')

" Memo
"nnoremap <Space>w  :<C-u>w<CR>とはどういう意味？
" http://e-v-e.hatenablog.com/entry/20150101/1420067539
"
"
" 2019/4/16
" - AgとDeniteの組み合わせがどうも上手く行かず、Rgとfzfを使ってみるととても良い感じ
"   :Rg {word}での検索、プレビュー、表示がとてもいい感じ。
"   選択後の再表示ができない、カーソル下の単語の検索ができないなどの課題があるけどなんとかならんか？
"
