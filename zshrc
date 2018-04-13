source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle colorize
antigen bundle history
antigen bundle osx
antigen bundle zsh_reload
antigen bundle web-search
antigen bundle Tarrasch/zsh-bd
antigen bundle jsontools
antigen bundle django
antigen theme lambda
antigen apply

for file in ~/Dev/dotfiles/{localrc,aliases.zsh,functions};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# OPAM configuration
. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

. `brew --prefix`/etc/profile.d/z.sh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

function dn() {
  axel -n 30 -q $*
}

archey -c

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/khz/Desktop/.google-cloud/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/khz/Desktop/.google-cloud/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/khz/Desktop/.google-cloud/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/khz/Desktop/.google-cloud/google-cloud-sdk/completion.zsh.inc'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/khzaw/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/khzaw/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/khzaw/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/khzaw/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh


if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
