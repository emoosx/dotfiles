plugins=(nyan nvm command-coloring pip fabric git mercurial battery command-aliases zsh_reload gitignore osx)

for file in ~/code/dotfiles/{path,exports,localrc,aliases.zsh};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# OPAM configuration
. /Users/emoosx/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
. `brew --prefix`/etc/profile.d/z.sh

archey -c
yosay "The quieter you become, the more you are able to hear"
nvm use stable
