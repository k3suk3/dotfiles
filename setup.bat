mklink %HOMEPATH%"\.vimrc" %HOMEPATH%"\dotfiles\.vimrc"
mklink %HOMEPATH%"\.gvimrc" %HOMEPATH%"\dotfiles\.gvimrc"
mklink %HOMEPATH%"\.inputrc" %HOMEPATH%"\dotfiles\.inputrc"
mklink %HOMEPATH%"\.bashrc" %HOMEPATH%"\dotfiles\.bashrc"
mklink %HOMEPATH%"\.bash_profile" %HOMEPATH%"\dotfiles\.bash_profile"
mklink /D %HOMEPATH%"\.vim" %HOMEPATH%"\dotfiles\.vim"

IF NOT EXIST %HOMEPATH%"\.vim\bundle" (
    mkdir %HOMEPATH%"\.vim\bundle"
    git clone git://github.com/Shougo/neobundle.vim %HOMEPATH%"\.vim\bundle\neobundle.vim"
)
