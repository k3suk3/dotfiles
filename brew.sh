#!/bin/bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew update
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion

# Install nodebrew
# Don't forget to add `$HOME/.nodebrew/current/bin` to `$PATH`.
brew install nodebrew

# Install rbenv
# Don't forget to add `eval "$(rbenv init -)"`
brew install rbenv
brew install ruby-build

brew install go
brew install ack
brew install ant
brew install git
brew install lua
brew install maven
brew install tree
brew install tmux
brew install vim --override-system-vi --with-lua
brew install wget --with-iri

# Remove outdated versions from the cellar.
brew cleanup
