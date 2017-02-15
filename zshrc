source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

antigen bundle colorize
antigen bundle history
antigen bundle osx
antigen bundle npm
antigen bundle themes
antigen bundle zsh_reload
antigen bundle web-search
antigen bundle Tarrasch/zsh-bd
antigen bundle jsontools
antigen bundle mafredri/zsh-async
antigen bundle django
antigen theme miloshadzic
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
