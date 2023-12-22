if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
#export PS1="[\A]-\u@\h\\$ "
PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
set -o vi
alias ls='ls --color=auto'
export GPG_TTY=$(tty)
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
