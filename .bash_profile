#silence bash warning from mac os
export BASH_SILENCE_DEPRECATION_WARNING=1

#set commands
#set -o vi
set -o emacs


#aliases
alias la='ls -la'
alias lsusb='system_profiler SPUSBDataType'
alias bi='beet import'


#i don't remember what this does, something about deleting time machine files
alias bp='/System/Library/Extensions/TMSafetyNet.kext/Contents/Helpers/bypass'

#aliases for dysliexia
alias sl='ls' #typo fix


#git aliases
alias gc='git commit'
alias ga='git add'
alias gs='git status'
alias gl='git log --name-status'

export SVN_EDITOR='/usr/bin/vim'

#functions

#drop a file on a terminal window to get its full path, then cdd to go to its directory
function cdd () { DIR=`dirname $1`; cd "$DIR"; }


#make things look pretty
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
#alias ls='ls -GFh'


#updating PATH
export PATH="$PATH:/Applications/yagarto/yagarto-4.7.2/bin"
export PATH="$PATH:/Applications/yagarto/yagarto-4.7.2/tools"
export PATH="$PATH:/Applications/microchip/xc32/v2.10/bin"
export PATH="$PATH:/Users/mattholland/.local/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mattholland/google-cloud-sdk/path.bash.inc' ]; then . '/Users/mattholland/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mattholland/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/mattholland/google-cloud-sdk/completion.bash.inc'; fi

<<<<<<< Updated upstream

#initialize pyenv and set default python version
eval "$(pyenv init -)"
pyenv shell 3.9.1
=======
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
>>>>>>> Stashed changes
