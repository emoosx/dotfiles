plugins=(nyan nvm pip fabric git mercurial battery command-aliases gitignore osx brew-cask django emoji-clock git-extras jsontools jump lol themes bower web-search vundle z colorize catimg colored-man frontend-search rand-quote zsh_reload)

for file in ~/code/dotfiles/{path,exports,localrc,aliases.zsh};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# OPAM configuration
. /Users/emoosx/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

archey -c
nvm use latest
q=`quote`
yosay $q
