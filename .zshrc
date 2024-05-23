#Author: Vaibhav Bhandari, Jan 2, 2022
echo "Loading ~/.zshrc - Vaibhav's homescript"

#pick visual studio code for editing
export EDITOR='vim'

### Program truths
show-info(){ ##show all home-page logic, short-cut is t
 cat <<< " 
- digital locker (identity documents, insurances, wills, etal.)
- for home script, backup in google drive
- photos are in google photos
- code is in github
- password are in google passwords 
"
}
dashboard(){##show dashbaord information, short-cut is d
 cat <<< "
DAILY
  - what you read today?
  - what your calendar is today?
  - how did the portfolio do today?

WEEKLY
  - what i read this week?
  - what tasks i completed this week?

MONTHLY
  - cash flow statement?
 "
}

### Help
help() ##this help file
{
 echo "Commands:"
 echo "help | h | ?"
 echo "e -- edit homescript"
 echo "l -- load homescript"
 echo "c -- commit homescript locally as well as to origin (uses yadm)"
 echo "me -- go to me directory"
 echo "cdcyber -- go to cyber defenders www directory"
 grep -E '^[a-zA-Z_-]+\(\)\{.*?##.*$$' ~/.zshrc | sort | awk 'BEGIN {FS="[\(\) ]*{[ ]*##"} {echo $1 " -- " $2}' 
}
alias 'cdcyber'='cd /Users/vaibhavb/Documents/GitHub/cyberdefenders/www-homepage'
alias '?'='help'
alias 'h'='help'
alias 't'='show-info'
alias 'd'='dashboard'
###

### Software to Install 
programs=(yadm tmux iTerm2 gdrive adobe-illustrator burp-suite sslscan)
install-tools(){ ##list programs to install on this computer
 for i in ${programs[@]}; do
  echo $i
 done;
}

### BASE STRUCTURE 
export PROJECTS=("gcal" "github - vaibhavb, cyberdefenders" "gdrive" "adobe" "..this machine>>")
export CURR_PROJECT_DIR="$HOME/Desktop/Current-Projects/"
list-projects(){ ##list all projects on this computer
 for i in ${PROJECTS[@]}; do
   echo $i
 done;
 for e in `ls $CURR_PROJECT_DIR`; do
   echo $e
 done;
}
export CURR_DIR="$HOME/Documents/GitHub/"
export CURR_DATA_DIR="$HOME/Documents/Data"
export THIS_FILE=~/.zshrc
which-projects(){ ##current projects use it before cdc
  ls -l $CURR_DIR
}
cdt() {
  local base_dir=$1
  local dir
  dir=$(find $base_dir -type d -name "*$2*" -print -quit 2>/dev/null)
  if [ -n "$dir" ]; then
   cd "$dir"
  else
   echo "Not found"
  fi
}
cdc(){ ##special cd command e.g cdc tools
  cdt $CURR_DIR $1
}
cdd(){ ##special cd command for data e.g cdd tools
  cdt $CURR_DATA_DIR $1
}
get-date(){ ##get date in iso 8601 format
  date -u +"%Y-%m-%dT%H:%M:%SZ"
}
alias l='source $THIS_FILE'
alias e='$EDITOR $THIS_FILE'
# commit to yadm and push to github
alias c='yadm add $THIS_FILE; EDITOR="vi" yadm commit; yadm push origin main'

####  DOMAINS 
alias learn='cd $CURR_DIR/learn/'
alias me='cd $CURR_DIR/me/'
alias tools='cd $CURR_DIR/tools/'

#### PROJECTS
# CyberSecurity Bootcamp
alias cdcb='cd $CURR_DIR/learn/cyber-bootcamp'
# Round Feather
alias cdrf='cd $CURR_DIR/round-feather'
# alias cdj='cd $CURR_DIR/jasper'
alias cdnfx-vuln='cd $CURR_DIR/nfx/vuln-project'
# alias listen inn
alias cdli='cd $CURR_DIR/art/listeninn'
alias cdttt='cd $CURR_DIR/learn/javascript/tictactoe'


### TOOLS
export PATH="$PATH:/Users/vaibhavb/Documents/Tools/"


# set python work environment
export PATH="/Users/vaibhavb/Library/Python/3.9/bin:$PATH"
export PYTHONDONTWRITEBYTECODE=1 


show-today() {
 cat <<< " 
- Today is `get-date`
- Calendar items
- Reminders . 
"
}
# show it!
show-today

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/vaibhavb/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/vaibhavb/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/vaibhavb/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/vaibhavb/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/vaibhavb/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/vaibhavb/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vaibhavb/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vaibhavb/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vaibhavb/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vaibhavb/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Created by `pipx` on 2024-04-09 21:05:01
export PATH="$PATH:/Users/vaibhavb/.local/bin"

# bun completions
[ -s "/Users/vaibhavb/.bun/_bun" ] && source "/Users/vaibhavb/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
alias nvim='NVIM_APPNAME="nvim-kickstart" nvim'
export PATH=$HOME/flutter/development/flutter/bin:$PATH
PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
export PATH
eval "$(starship init zsh)"
alias z="zellij"

#vim in zsh
bindkey -v
# git commands
alias g='git'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
