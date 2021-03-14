source $(brew --prefix)/share/antigen/antigen.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/opt/zsh-git-prompt/zshrc.sh
fpath=(/usr/local/share/zsh-completions $fpath)

export ZSH=$HOME/

antigen use oh-my-zsh
antigen bundle git
antigen bundle gitignore
antigen bundle pipenv
antigen bundle pyenv
antigen bundle yarn
antigen bundle github
antigen bundle git-extras
antigen bundle git-flow
antigen bundle httpie
antigen bundle jira
antigen bundle pip
antigen bundle common-aliases
antigen bundle cabal
antigen bundle colorize
antigen bundle docker
antigen bundle docker-compose
antigen bundle encode64
antigen bundle history
antigen bundle lukechilds/zsh-nvm
antigen bundle halfo/lambda-mod-zsh-theme
antigen bundle pyenv
antigen bundle python
antigen bundle rand-quote
antigen bundle web-search
antigen bundle yarn
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

export V="$(pyenv -v | awk 'NF{ print $NF }')"
source "/usr/local/Cellar/pyenv/$V/libexec/../completions/pyenv.zsh"
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
# export PATH="/usr/local/opt/terraform@0.13/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
