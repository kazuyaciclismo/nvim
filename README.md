# nvim

## 参考にしたサイト
* https://qiita.com/Ress/items/7e71e007cf8d41a07a1a
* https://qiita.com/okamos/items/4e1665ecd416ef77df7c

## 使用方法

```vim
normal mode: ,g      # カーソル位置の文字列を検索
normal mode: ,r      # 前回の検索結果を表示
normal mode: ,n      # 次の検索結果に移動
normal mode: ,p      # 前の検索結果に移動
```

```vim
command: :Rg         # 続けて文字列を入力することでgrep. 複数単語のマッチも可能!
command: :Rg <word>  # <word>をgrep
```


## Macでの導入

```sh
# neovimのインストール
$brew install neovim

# Python3が必要
$brew install python3

# neovimパッケージの導入
$pip3 install -U neovim
```

### 設定ファイルの場所を指定
```sh
export XDG_CONFIG_HOME="$HOME/.config"
```

### 設定ファイルを取得
```sh
git clone https://github.com/kazuyaciclismo/nvim.git
```


# Misc

## macOSでbash-completionを有効にする(ついでにgit-completionも) 
* https://qiita.com/n-oshiro/items/d44a4c2b72625746de25
