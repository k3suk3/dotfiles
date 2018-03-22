# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

export PATH=$PATH:./node_modules/.bin
export GOPATH=$HOME/go
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH

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

# `cd` を使う時にタイポを自動修正
shopt -s cdspell;

# autojumpの設定
[[ -s $(brew --prefix)/etc/autojump.sh ]] && . $(brew --prefix)/etc/autojump.sh

# bash-completion
[[ -s $(brew --prefix)/etc/bash_completion ]] && . $(brew --prefix)/etc/bash_completion
complete -C aws_completer aws

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# [[ -s "$HOME/.iterm2_shell_integration.bash" ]] && source "$HOME/.iterm2_shell_integration.bash"

