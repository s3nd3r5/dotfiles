##
#	Exports
##
export PS1='[\[\e[1m\e[32m\]\u\[\e[0m\e[21m\]]$ '
#Prompt Command Function CWD
function cwd {
	pwd | awk '{ n=split($0,a,"/"); print a[n-1]"/"a[n] }'
}
export PROMPT_COMMAND='echo -ne "\033]0;`cwd`\007"'
export PRJ_HOME=$HOME/projects
export APP_HOME=$HOME/applications
export CONF_HOME=$HOME/configs
export HADOOP_HOME=$HOME/applications/hadoop-latest
export JAVA_HOME_8=/usr/lib/jvm/java-8-oracle/
export JAVA_HOME_7=/usr/lib/jvm/java-7-oracle/
export JAVA_HOME=$JAVA_HOME_8
export SCALA_HOME=$APP_HOME/scala-latest
export HERMES_BIN=$PRJ_HOME/hermes/tools/bin
export PATH=$PATH:/home/senders/.bin:$HADOOP_HOME/bin:$SCALA_HOME/bin:$HERMES_BIN
##
#	Alias
##
alias ccopy='xclip -selection clipboard'
alias cpaste='xclip -selection clipboard -o'
alias tgz='tar czvf'
alias utgz='tar xzvf'
alias lsa='ls -al'
alias a_mute='amixer sset Master toggle'
alias bgrand='xsetroot -solid "#$(openssl rand -hex 3)"'
alias jshell='docker run -it java:9 jshell'
alias resource='source ~/.bash_profile'
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


