# Check for an interactive session
	[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias ack='ack-grep'
alias ..='cd ..'
alias git='hub'

export TERM=xterm-color
export PAGER=less

PS1='\[\e[1;32m\]\W$(vcprompt)$\[\e[0m\] '

if [ -f ~/.profile ]; then
	source ~/.profile
fi

DEFAULT_COLOR="[00m"
GRAY_COLOR="[37m"
PINK_COLOR="[35m"
GREEN_COLOR="[32m"
ORANGE_COLOR="[33m"
VCPROMPT_EXECUTABLE=~/Projects/vcprompt/vcprompt
vcprompt() {
	$VCPROMPT_EXECUTABLE -f $' on \033[34m%n\033[00m:\033[00m%[unknown]b\033[32m%m%u'
}
export BASEPROMPT='\n\e${PINK_COLOR}\u \
\e${GRAY_COLOR}in \e${GREEN_COLOR}\w\
\e${GRAY_COLOR}$(vcprompt)\e${DEFAULT_COLOR}'
export PS1="${BASEPROMPT}
$ "

export VIRTUALENV_USE_DISTRIBUTE=1
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
