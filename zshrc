fpath=( "$HOME/.zfunctions" $fpath )
PURE_PROMPT_SYMBOL=λ

source /Users/$(whoami)/Code/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle battery
antigen bundle rand-quote
antigen bundle git
antigen bundle git-extras
antigen bundle git-flow
antigen bundle git-hubflow
antigen bundle git-prompt
antigen bundle gitignore
antigen bundle gitfast
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found
antigen bundle colorize
antigen bundle history
antigen bundle history-substring-search
antigen bundle osx
antigen bundle npm
antigen bundle themes
antigen bundle zsh_reload
antigen bundle web-search
antigen bundle sindresorhus/pure
antigen bundle Tarrasch/zsh-bd
antigen bundle jsontools
antigen apply





for file in ~/code/dotfiles/{exports,path,localrc,aliases.zsh,functions};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# OPAM configuration
. /Users/emoosx/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


. `brew --prefix`/etc/profile.d/z.sh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

function dn() {
  axel -n 30 -q $*
}

nvm use v0.12 > /dev/null 2> /dev/null

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
