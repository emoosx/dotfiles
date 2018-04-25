source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle colorize
antigen bundle history
antigen bundle osx
antigen bundle zsh_reload
antigen bundle Tarrasch/zsh-bd
antigen bundle jsontools
antigen theme lambda
antigen apply

for file in ~/Code/dotfiles/{aliases.zsh,functions};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
