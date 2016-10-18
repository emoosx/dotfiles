source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src
antigen bundle yardnsm/blox-zsh-theme
antigen apply

source $(brew --prefix)/bin/virtualenvwrapper.sh

for file in ~/Code/dotfiles/{exports,path,localrc,aliases.zsh,functions};
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

source $(brew --prefix nvm)/nvm.sh
archey -c

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/khz/Desktop/.google-cloud/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/khz/Desktop/.google-cloud/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/khz/Desktop/.google-cloud/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/khz/Desktop/.google-cloud/google-cloud-sdk/completion.zsh.inc'
fi

