#export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8
#export LANGUAGE=en_US.UTF-8
export TERM='st-256color'
export TERMINAL=st
export EDITOR='vim'
export VISUAL='vim'

#Prompt Command Function CWD
function cwd {
	pwd | awk '{ n=split($0,a,"/"); print a[n-1]"/"a[n] }'
}

##
#	Exports
##
export PROMPT_COMMAND='echo -ne "\033]0;`cwd`\007"'
export PS1="\[$(tput setaf 12)\][\[$(tput bold)\]\[$(tput setaf 2)\]\u\[$(tput sgr0)\]\[$(tput setaf 12)\]]\[$(tput setaf 13)\]\\$ \[$(tput sgr0)\]"
export PRJ_HOME=$HOME/projects
export APP_HOME=$HOME/applications
export CONF_HOME=$HOME/configs
export PLAYGROUND_HOME=$HOME/playground
export JAVA_HOME_8=/usr/lib/jvm/java-8-oracle/
export JAVA_HOME_7=/usr/lib/jvm/java-7-oracle/
export JAVA_HOME=$JAVA_HOME_8
export SCALA_HOME=$APP_HOME/scala-latest
export GO_HOME=/usr/local/go
export GOPATH=$PLAYGROUND_HOME/go
export ARDOUR_HOME=/opt/Ardour-5.12.0/bin
export PATH=$PATH:/home/senders/.bin:$ARDOUR_HOME:$SCALA_HOME/bin:$HOME/.cargo/bin:/snap/bin:$GO_HOME/bin:/usr/local/include:$GOPATH

##
#	Alias
##
alias ccopy='xclip -selection clipboard'
alias cpaste='xclip -selection clipboard -o'
alias tgz='tar czvf'
alias utgz='tar xzvf'
alias volmute='amixer sset Master toggle'
alias bgrand='fn_bg_rand'
alias bgset='xsetroot -solid '
alias resource='source ~/.bash_profile'
alias whoisport='lsof -t tcp:'
alias checksum='openssl dgst -sha256'
alias mmoff='xrandr --output eDP-1 --off'
alias mmon='xrandr --output eDP-1 --auto'
alias exon='xrandr --output DP-1 --auto && mmoff'
alias exoff='mmon; xrandr --output DP-1 --off'
alias ssh-evict='ssh-keygen -f "/home/senders/.ssh/known_hosts" -R'
alias add-ssh='ssh-add ~/.ssh/id_rsa'


# Private Bash Profile for things I don't want in git
if [ -f ~/.pc_local_bash_profile ]; then
  . ~/.pc_local_bash_profile
fi

# Setup SSH to work with ST
# if [ "$TERM" == "st-256color"]; then
#  alias ssh='TERM="xterm-256color"; ssh'
# fi


##
#	Functions
##
function prj {
	cd $PRJ_HOME/$1
}

function config {
	cd $CONF_HOME/$1
}

function play {
 	cd $PLAYGROUND_HOME/$1
}

function clip {
	cat $1 | ccopy
}

function print_clip {
	cpaste
}
function fn_bg_set {
	xsetroot -solid "#$1"
}
function fn_bg_rand {
	__CLR=$(openssl rand -hex 3)
	fn_bg_set $__CLR
	echo "#"$__CLR
	unset __CLR
}
function mvnversion {
  mvn versions:set -DnewVersion=$1 -DgenerateBackupPoms=false
}

export PATH="$HOME/.cargo/bin:$PATH"
