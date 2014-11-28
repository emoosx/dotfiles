source /Users/$(whoami)/code/dotfiles/antigen/antigen.zsh

antigen use prezto
antigen apply


for file in ~/code/dotfiles/{exports,path,localrc,aliases.zsh,functions};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# OPAM configuration
. /Users/emoosx/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

nvm use latest > /dev/null 2> /dev/null

. `brew --prefix`/etc/profile.d/z.sh
