#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Note: don’t forget to add `/usr/local/bin/zsh` to `/etc/shells` before
# running `chsh`.
brew install zsh


# vim
brew install macvim --with-lua --with-luajit --custom-icons --HEAD
brew install vim --override-system-vi --with-lua --with-luajit --HEAD

# Install more recent versions of some OS X tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

brew install binutils

# Install other useful binaries.
brew install ack
brew install apple-gcc42
brew install archey
brew install axel
brew install cmake
brew install cscope
brew install ctags
brew install git
brew install git-extras
brew install hub
brew install imagemagick --with-webp
brew install rename
brew install tree
brew install z

# Programming Languages
brew install nvm
brew install python
brew install google-app-engine
brew install ocaml
brew install opam
brew install lua
brew install luajit
brew install erlang
brew install scala
brew install sbt
brew install ghc
brew install leiningen
brew install ansible
brew install docker
brew install nginx
brew install mysql
brew install dart
brew install rust

# Remove outdated versions from the cellar.
brew cleanup
brew linkapps