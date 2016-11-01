##
#	Exports
##
export PS1='[\e[1m\e[32m\u\e[0m\e[21m]$ '
export PROMPT_COMMAND='echo -ne "\033]0;`pwd`\007"'
export PATH=$PATH:/home/senders/.bin
export PRJ_HOME=$HOME/projects
export APP_HOME=$HOME/applications
export CONF_HOME=$HOME/configs

##
#	Alias
##
alias ccopy='xclip -selection clipboard'
alias cpaste='xclip -selection clipboard -o'


##
#	Functions
##
function prj {
	cd $PRJ_HOME/$1
}

function config {
	cd $CONF_HOME/$1
}

function clip {
	cat $1 | ccopy
}

function print_clip {
	cpaste
}
