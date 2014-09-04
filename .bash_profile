# march 09, 2014
# --jdc



# source .bash_aliases
if [ -f ~/.bash_aliases ]
then
  . ~/.bash_aliases
fi

# source scripts directory
export PATH="$PATH:$HOME/scripts"

# it could happen... some day...
export PATH="$PATH:$HOME/ubin"

# Python environment
export PATH="$PATH:$HOME/nest"
export PYTHONPATH="$HOME/nest"

# pretty prompt
export PS1="\[\033[01;30m\]\u@\h\[\033[m\] \[\033[01;34m\]\w\[\033[m\] \[\033[01;30m\]:$\[\033[m\] "

# go env vars
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"

# some postgresql environment variables
PGDATA="/var/lib/postgres/data"

# start with a nice report
attn
