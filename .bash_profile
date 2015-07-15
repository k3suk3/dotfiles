export PATH="$HOME/bin:$PATH";

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH

# Docker
eval "$(docker-machine env dev)"
# export DOCKER_HOST=tcp://192.168.59.103:2376
# export DOCKER_CERT_PATH="$HOME/.boot2docker/certs/boot2docker-vm"
# export DOCKER_TLS_VERIFY=1

#coreutilsを優先
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
eval $(dircolors ~/dotfiles/dircolors.ansi-dark)

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/dotfiles/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# ワイルドカードの展開を行うときに、 大文字と小文字を区別しない。
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# `cd` を使う時にタイポを自動修正
shopt -s cdspell;

# autojumpの設定
[[ -s $(brew --prefix)/etc/autojump.sh ]] && . $(brew --prefix)/etc/autojump.sh

# bash-completion
[[ -s $(brew --prefix)/etc/bash_completion ]] && . $(brew --prefix)/etc/bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"

