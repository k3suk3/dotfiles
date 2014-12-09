"======================================================================
" 基本設定 Basics
"======================================================================
syntax enable
set background=dark
colorscheme solarized
set formatoptions=q    "自動改行しない

"======================================================================
" メニュー文字化け対応
"======================================================================
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

"======================================================================
" ウインドウに関する設定
"======================================================================
set columns=150        " ウインドウの幅
set lines=60           " ウインドウの高さ
set cmdheight=2        " コマンドラインの高さ(GUI使用時)


"======================================================================
" フォント設定
"======================================================================
if has('win32')
  " Windows用
  set guifont=Migu_1M:h10:cSHIFTJIS
  " 行間隔の設定
  set linespace=1
  " 一部のUCS文字の幅を自動計測して決める
  if has('kaoriya')
    set ambiwidth=auto
  endif
elseif has('mac')
  set guifont=Osaka－等幅:h14
elseif has('xfontset')
  " UNIX用 (xfontsetを使用)
  set guifontset=a14,r14,k14
endif
