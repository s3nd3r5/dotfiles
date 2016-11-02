##
#	Exports
##
export PS1='[\e[1m\e[32m\u\e[0m\e[21m]$ '
export PROMPT_COMMAND='echo -ne "\033]0;`pwd`\007"'
export PRJ_HOME=$HOME/projects
export APP_HOME=$HOME/applications
export CONF_HOME=$HOME/configs
export HADOOP_HOME=$HOME/applications/hadoop-latest
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/jre

export PATH=$PATH:/home/senders/.bin:$HADOOP_HOME/bin
##
#	Alias
##
alias ccopy='xclip -selection clipboard'
alias cpaste='xclip -selection clipboard -o'
alias tgz='tar czvf'
alias utgz='tar xzvf'
alias lsa='ls -al'
alias unmute='amixer sset Master unmute'
alias mute='amixer sset Master mute'
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
