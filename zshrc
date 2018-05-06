source $(brew --prefix)/share/antigen/antigen.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(/usr/local/share/zsh-completions $fpath)


antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle colorize
antigen bundle history
antigen bundle zsh_reload
antigen bundle Tarrasch/zsh-bd
antigen theme lambda
antigen apply

for file in ~/Code/dotfiles/{aliases.zsh,functions};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
