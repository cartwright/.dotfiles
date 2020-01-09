#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# march 09, 2014
# --jdc

# pretty prompt
export PS1="\[\033[01;30m\]\u@\h\[\033[m\] \[\033[01;34m\]\w\[\033[m\] \[\033[01;30m\]:$\[\033[m\] "

# source .bash_aliases
if [ -f ~/.bash_aliases ]
then
  . ~/.bash_aliases
fi

# source scripts directory
export PATH="$PATH:$HOME/scripts"

# kill the beep
xset b off

# start with a nice report
attn
echo
