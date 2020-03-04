# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

export PATH=$PATH:./node_modules/.bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export JAVA_HOME=$(/usr/libexec/java_home -v 11)
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export DIRENV_WARN_TIMEOUT=100s

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
if which direnv > /dev/null; then eval "$(direnv hook bash)"; fi

# ワイルドカードの展開を行うときに、 大文字と小文字を区別しない。
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# bash-completion
[[ -s $(brew --prefix)/etc/bash_completion ]] && . $(brew --prefix)/etc/bash_completion
complete -C aws_completer aws
