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

# Build a list of strings to be completed for ssh/scp/sftp
SSH_COMP_STR=""

# Grab "Host" entries from ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && SSH_COMP_STR="${SSH_COMP_STR} $(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)"

# Grab all hosts from ~/.ssh/known_hosts
[ -e "$HOME/.ssh/known_hosts" ] && SSH_COMP_STR="${SSH_COMP_STR} $(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)"

# Set up strings found above for tab completion
complete -o "default" -o "nospace" -W "${SSH_COMP_STR}" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

