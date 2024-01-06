# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "$(dircolors)"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
export PATH=$PATH:/usr/games
PS1='\[\e[38;5;75m\]\u\[\e[0m\]@\[\e[38;5;99m\]\H\[\e[0m\]:# '
figlet -c "ozaneren" | lolcat
echo " "
export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[31m\]\h\[\e[m\]:# "
function nonzero_return() {
	RETVAL=$?
	[ $RETVAL -ne 0 ] && echo "$RETVAL"
}

export PS1="\[\e[36m\][\[\e[m\]\[\e[31m\]\`nonzero_return\`\[\e[m\]\[\e[36m\]]\[\e[m\]\[\e[32m\]ozaneren\[\e[m\]@\[\e[36m\][\[\e[m\]\[\e[34m\]datacenter\[\e[m\]\[\e[34m\]/\[\e[m\]\[\e[34m\]\W\[\e[m\]\[\e[36m\]]\[\e[m\]\[\e[32m\] ->\[\e[m\] "
