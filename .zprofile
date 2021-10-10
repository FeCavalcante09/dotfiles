# Default programs:
export EDITOR="gedit"
export VISUAL="gedit"
export TERMINAL="kitty"
export BROWSER="firefox"
#export FILE="pcmanfm"

# Cargo binaries.
export PATH="$HOME/.cargo/bin:$PATH"
 
# Allow all files in bin and the subdirs to be in PATH
# Create the folder if it doesn't exist.
[ ! -e "$HOME/bin" ] && mkdir $HOME/bin
export PATH=$PATH$( find $HOME/bin/ -type d -printf ":%p" )
 
# Local binaries
export PATH="$HOME/.local/bin:$PATH"

