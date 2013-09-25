mkcd() { mkdir -p $1 && cd $1; } # Create a function to make a dir and then cd into it

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[ -n "$PS1" ] && source ~/.bash_profile

# Load Boxen environment if present
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

