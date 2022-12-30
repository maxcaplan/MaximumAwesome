#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Deno Path
export DENO_INSTALL="/home/$USER/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
    exec fish
fi

# Pfetch variables
export PF_INFO="title os host kernel uptime pkgs memory"

# Randomly pick a command to run on prompt startup
if (( 1 + $RANDOM % 2 == 1 ))
then
    colorscript -r
else
    pfetch
fi

eval "$(starship init bash)"

