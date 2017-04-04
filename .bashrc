## One history for all shells
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Custom prompt
 export PS1="===> \[\e[32m\]looneym\[\e[m\] \[\e[34m\]\w\[\e[m\] "
#export PS1="🔥 💯 🐴  ===> \[\e[32m\]\u\[\e[m\] \[\e[34m\]\w\[\e[m\] "

## Not sure if this stuff is necessary but afraid to delete
export CLICOLOR=1
export TERM=xterm-256color
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Aliases below this line
alias bedit='vi ~/.bash_profile'
alias bsource='source ~/.bash_profile'
alias mkal="~/.user_scripts/make_alias"
