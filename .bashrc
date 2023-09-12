### Git bash prompt

# 1-liner : export PS1="\n\t \[\033[32m\]\w\[\033[33m\]\$(GIT_PS1_SHOWUNTRACKEDFILES=1 GIT_PS1_SHOWDIRTYSTATE=1 __git_ps1)\[\033[00m\] $ "
git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

#PS1_HOST='\[\033[02;36m\]\h'; HOST=' '$HOST
PS1_TIME='\[\033[01;31m\]\t \[\033[01;32m\]'
PS1_LOCATION=' \[\033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
PS1_BRANCH=' \[\033[00;33m\]($(git_branch))\[\033[00m\] \$ '
PS1=$PS1_TIME$USER$PS1_LOCATION$PS1_BRANCH
#PS1=$PS1_TIME$USER@$PS1_HOST$PS1_LOCATION$PS1_BRANCH



### github_activity

alias activity="/mnt/f/21_GIT/github_activity/run.sh"



### NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion