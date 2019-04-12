setopt no_global_rcs

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
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# misc
export EDITOR="vim"
export GREP_OPTIONS="--color=auto"
# don't clear the screen after quitting a manual page
export MANPAGER="less -X"
# highlight section titles in manual pages
export LESS_TERMCAP_md="${yellow}"

# python
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# android
export ANDROID=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK="$ANDROID"
export ANDROID_PLATFORM_TOOLS="$ANDROID_SDK/platform-tools"

# java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# go
export GOPATH=$HOME/.go

export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# PATH
export PATH="$HOME/bin"
export PATH="$PATH:$PYENV_ROOT/bin"
export PATH="$PATH:$HOME/.fastlane/bin"															# Fastlane
export PATH="$PATH:/usr/texbin"                                     # LaTeX
export PATH="$PATH:$HOME/.local/bin"                                # Pipsi
export PATH="$PATH:/usr/local/bin:/usr/local/sbin"                  # homebrew
export PATH="$PATH:/usr/local/opt/openssl/bin"
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
export PATH="$PATH:/usr/bin:/usr/sbin:/bin:/sbin:/opt/X11/bin"      # OSX built in
export PATH="$PATH:/Developer/usr/bin"                              # Apple Developer
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH" # Postgres App

export MANPATH="$MANPATH:/usr/local/share/man"
export MANPATH="$MANPATH:/usr/share/man"
export MANPATH="$MANPATH:/opt/X11/share/man"
export MANPATH="$MANPATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Man"
export MANPATH="$MANPATH:/usr/local/opt/erlang/lib/erlang/man"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="$MANPATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Man"

# The next line updates PATH for the Google Cloud SDK.
if [ -f $HOME/Desktop/.google-cloud/google-cloud-sdk/path.zsh.inc ]; then
  source '$HOME/Desktop/.google-cloud/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f $HOME/Desktop/.google-cloud/google-cloud-sdk/completion.zsh.inc ]; then
  source '$HOME/Desktop/.google-cloud/google-cloud-sdk/completion.zsh.inc'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f $HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . $HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f $HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . $HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh


if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

. `brew --prefix`/etc/profile.d/z.sh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
