# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{bashrc,extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

[ -f ~/.ssh_completion ] && source ~/.ssh_completion

# Load bash completion extensions from brew
if command -v brew >/dev/null 2>&1 && [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi
