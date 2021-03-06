################################################################################
#
#  zsh/oh-my-zsh config stuff
#
################################################################################

# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

export ZSH=~/.oh-my-zsh
ZSH_THEME="cobalt2"
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

################################################################################
#
#  personal configs
#
################################################################################

# ENV variables
export DEFAULT_USER='looneym'

# manipulate dotfiles
alias zedit='vi ~/.zshrc'
alias zsource='source ~/.zshrc'
alias zimp='cp ~/hobo/zshrc ~/.zshrc' 
alias zexp='cp ~/.zshrc ~/hobo/zshrc' 
alias vimp='cp ~/hobo/vimrc ~/.vimrc'
alias vexp='cp ~/.vimrc ~/hobo/vimrc'

# These aliases required to use metasploit is osx
alias msfconsole="/usr/local/share/metasploit-framework && ./msfconsole && cd -"
alias msfbinscan="/usr/local/share/metasploit-framework && ./msfbinscan && cd -"
alias msfd="/usr/local/share/metasploit-framework && ./msfd && cd -"
alias msfelfscan="/usr/local/share/metasploit-framework && ./msfelfscan && cd -"
alias msfmachscan="/usr/local/share/metasploit-framework && ./msfmachscan && cd -"
alias msfpescan="/usr/local/share/metasploit-framework && ./msfpescan && cd -"
alias msfrop="/usr/local/share/metasploit-framework && ./msfrop && cd -"
alias msfrpc="/usr/local/share/metasploit-framework && ./msfrpc && cd -"
alias msfrpcd="/usr/local/share/metasploit-framework && ./msfrpcd && cd -"
alias msfupdate="/usr/local/share/metasploit-framework && ./msfupdate && cd -"
alias msfvenom="/usr/local/share/metasploit-framework && ./msfvenom && cd -"

# misc utilities
alias venvup='source venv/bin/activate'
alias venvinit='virtualenv venv && source venv/bin/activate'
alias lsdir='ls -d */'
alias pysrv='python -m SimpleHTTPServer'
alias procfind="ps ax | grep $1"
