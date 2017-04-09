# command used to set up a new mac

# fix osx key refresh rate
30  defaults write -g InitialKeyRepeat -int 10
31  defaults write -g KeyRepeat -int 1

# generate a new ssh key
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub

# get pip
sudo easy_install pip

# get fonts needed for zsh theme
git clone https://github.com/powerline/fonts
cd fonts
./install.sh

# get zsh theme
git clone https://github.com/wesbos/Cobalt2-iterm.git
cp cobalt2.zsh-theme ~/.oh-my-zsh/themes/
vi  ~/.zshrc
source ~/.zshrc

# get user programs
brew cask install atom
