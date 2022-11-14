#Author: Vaibhav Bhandari, Jan 2, 2022
print "Loading ~/.zshrc - Vaibhav's homescript"

### Help
help() ##this help file
{
 print "Commands:"
 print "help | h | ?"
 print "e -- edit homescript"
 print "l -- load homescript"
 print "c -- commit homescript (uses yadm)"
 print "me -- go to me directory"
 grep -E '^[a-zA-Z_-]+\(\)\{.*?##.*$$' ~/.zshrc | sort | awk 'BEGIN {FS="[\(\) ]*{[ ]*##"} {print $1 " -- " $2}' 
}
alias '?'='help'
alias 'h'='help'

###

### Software to Install 
programs=(yadm mux iTerm2 gdrive adobe-illustrator burp-suite)
install-tools(){ ##list programs to install on this computer
 for i in ${programs[@]}; do
  print $i
 done;
}

### BASE STRUCTURE 
export PROJECTS=("github - vaibhavb, cyberdefenders" "gdrive" "adobe")
export CURR_PROJECT_DIR="$HOME/Desktop/Current-Projects/"
list-projects(){ ##list all projects on this computer
 for i in ${PROJECTS[@]}; do
   print $i
 done;
 for e in `ls $CURR_PROJECT_DIR`; do
   print $e
 done;
}
export CURR_DIR=~/Desktop/Current-Projects
export THIS_FILE=~/.zshrc
which-projects(){ ##current projects use it before cdc
  ls -l $CURR_DIR
}
cdc(){ ##special cd command
  cd $CURR_DIR/$@
}
alias l='source $THIS_FILE'
alias e='vi $THIS_FILE'
alias c='yadm add $THIS_FILE; yadm commit; yadm push origin main'

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


#### Macbookpro Specific
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vaibhavb/Desktop/Current-Projects/external-code/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vaibhavb/Desktop/Current-Projects/external-code/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vaibhavb/Desktop/Current-Projects/external-code/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vaibhavb/Desktop/Current-Projects/external-code/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/Applications/:/opt/homebrew/opt/openssl@3/bin:$PATH"

#rbenv
eval "$(rbenv init - zsh)"

### TOOLS
export PATH="$PATH:/User/vaibhavb/Desktop/Current-Projects/04-2022-koboldmetals/prowler"
