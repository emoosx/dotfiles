source $(brew --prefix)/share/antigen/antigen.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(/usr/local/share/zsh-completions $fpath)

antigen use oh-my-zsh
antigen bundle git
antigen bundle gitignore
antigen bundle pipenv
antigen bundle pyenv
antigen bundle yarn
antigen bundle github
antigen bundle pip
antigen bundle colorize
antigen bundle history
antigen bundle lukechilds/zsh-nvm
antigen theme lambda
antigen apply

for file in ~/Code/dotfiles/{aliases.zsh,functions};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export v="$(pyenv -v | awk 'NF{ print $NF }')"
source "/usr/local/Cellar/pyenv/$v/libexec/../completions/pyenv.zsh"
command pyenv rehash 2>/dev/null
pyenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  activate|deactivate|rehash|shell|virtualenvwrapper|virtualenvwrapper_lazy)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

eval "$(starship init zsh)"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
export PATH="/usr/local/opt/terraform@0.13/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
