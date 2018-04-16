export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
# home
export HOME="/Users/$(whoami)"

# history
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# lang
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# misc
export EDITOR="vim"
export ALTERNATE_EDITOR=""
export GREP_OPTIONS="--color=auto"
# don't clear the screen after quitting a manual page
export MANPAGER="less -X"
# highlight section titles in manual pages
export LESS_TERMCAP_md="${yellow}"

# python
# export PYTHONPATH=/usr/local/bin/python3
# export PIP_DOWNLOAD_CACHE="$HOME/.pip/cache"
# export WORKON_HOME="$HOME/.virtualenvs"
# export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python3"
# source /usr/local/bin/virtualenvwrapper.sh
export PYENV_ROOT="$HOME/.pyenv"

# android
export ANDROID=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK="$ANDROID"
export ANDROID_PLATFORM_TOOLS="$ANDROID_SDK/platform-tools"

# java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# go
export GOPATH=$HOME/.go

# ocaml
export CAML_LD_LIBRARY_PATH="$HOME/.opam/4.02.1/lib/stublibs:$HOME/.opam/system/lib/stublibs:/usr/local/lib/ocaml/stublibs"
export OPAMUTF8MSGS="1"
export PERL5LIB="$HOME/.opam/4.02.1/lib/perl5:$HOME/.opam/system/lib/perl5"
export OCAML_TOPLEVEL_PATH="$HOME/.opam/4.02.1/lib/toplevel:$HOME/.opam/system/lib/toplevel"
export HELPDIR=/usr/local/share/zsh/help

# openssl stuffs
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

# PATH
export PATH="$HOME/bin"
export PATH="$PATH:$HOME/.fastlane/bin"															# Fastlane
export PATH="$PATH:/usr/texbin"                                     # LaTeX
# export PATH="$PATH:$HOME/.opam/4.02.1/bin"                          # OCaml
# export PATH="$PATH:$HOME/.opam/system/bin"                          # OCaml
export PATH="$PATH:$PYENV_ROOT/bin"
export PATH="$PATH:$HOME/.local/bin"                                # Pipsi
export PATH="$PATH:/usr/local/bin:/usr/local/sbin"                  # homebrew
export PATH="$PATH:$HOME/.cabal/bin"                                # Haskell
export PATH="$PATH:$HOME/.rbenv"                                    # Ruby
export PATH="$PATH:$HOME/Library/Android/sdk/tools"									# Android
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"        # Android
export PATH="$PATH:/usr/local/heroku/bin"                           # Heroku Toolbet
export PATH="$PATH:/usr/local/go/bin"                               # Go
export PATH="$PATH:/usr/local/opt/go/libexec/bin"                   # Go
export PATH="$PATH:$GOPATH/bin"                                     # Go path
export PATH="$PATH:/usr/local/opt/mysql/bin"                        # mysql
export PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"         # GNU stuffs
export PATH="$PATH:/usr/local/share/npm/bin"                        # Node
export PATH="$PATH:`yarn global bin`"
export PATH="$PATH:/usr/local/smlnj/bin"                            # standard ML
export PATH="$PATH:/usr/bin:/usr/sbin:/bin:/sbin:/opt/X11/bin"      # OSX built in
export PATH="$PATH:/Developer/usr/bin"                              # Apple Developer
export PATH="$PATH:/usr/local/opt/go/libexec/bin"                   # GOROOT-based
export PATH="$PATH:/usr/local/cuda/bin"                             # CUDA
export PATH="$PATH:/usr/local/m-cli"																# Swiss army knife
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH" # Postgres App

export MANPATH="$HOME/.opam/4.02.1/man:$HOME/.opam/system/man"
export MANPATH="$MANPATH:/usr/local/share/man"
export MANPATH="$MANPATH:/usr/share/man"
export MANPATH="$MANPATH:/opt/X11/share/man"
export MANPATH="$MANPATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Man"
export MANPATH="$MANPATH:/Users/$(whoami)/.nvm/v0.11.13/share/man"
export MANPATH="$MANPATH:/usr/local/opt/erlang/lib/erlang/man"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="$MANPATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Man"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
