for file in ~/Code/dotfiles/{aliases.zsh,functions};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

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


eval "$(register-python-argcomplete pipx)"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# poetry completions zsh > ~/.zfunc/_poetry
# fpath+=~/.zfunc

source "$HOME/.local/share/miniplug.zsh"
miniplug plugin 'agkozak/zsh-z'
miniplug plugin 'zsh-users/zsh-completions'
miniplug plugin 'zsh-users/zsh-history-substring-search'
miniplug plugin 'zsh-users/zsh-autosuggestions'
miniplug plugin 'zdharma/fast-syntax-highlighting'
miniplug theme 'dracula/zsh'
miniplug load

export AWS_SDK_LOAD_CONFIG=1

export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

# hstr --show-configuration >> ~/.zshrc
# # HSTR configuration - add this to ~/.zshrc
# alias hh=hstr                    # hh to be alias for hstr
# setopt histignorespace           # skip cmds w/ leading space from history
# export HSTR_CONFIG=hicolor       # get more colors
# bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
