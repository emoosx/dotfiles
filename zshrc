source antigen/antigen.zsh

antigen use oh-my-zsh

# Bundles from default oh-my-zsh repo
# vcs
antigen bundle git
antigen bundle git-extras
antigen bundle gitignore
antigen bundle mercurial

# language
antigen bundle heroku
antigen bundle pip
antigen bundle nvm
antigen bundle fabric
antigen bundle bower
antigen bundle django
antigen bundle jsontools

# utils
antigen bundle web-search
antigen bundle frontend-search
antigen bundle colored-man
antigen bundle battery
antigen bundle command-aliases
antigen bundle themes
antigen bundle zsh_reload
antigen bundle z

# fun
antigen bundle rand-quote
antigen bundle nyan
antigen bundle emoji-clock
antigen bundle catimg

# osx
antigen bundle osx
antigen bundle brew-cask
antigen bundle osx

# Syntax highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions src

# Theme
antigen theme arrow

antigen apply


for file in ~/code/dotfiles/{exports,path,localrc,aliases.zsh};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# OPAM configuration
. /Users/emoosx/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

nvm use latest > /dev/null 2> /dev/null
q=`quote`
yosay $q
