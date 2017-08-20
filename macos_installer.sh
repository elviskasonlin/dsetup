# Welcome to Elvis's dotfiles.
# These commands help Elvis to set up on a new Mac easily.


###########################################
# Sudo everything                         #
###########################################

# Ask for sudo from user
sudo -v

# Keep sudo alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


###########################################
# Other init stuff                        #
###########################################

# Install Xcode Dev Tools
xcode-select --install


###########################################
# Brew install everything                 #
###########################################

# Install Homebrew first
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Brew doctor twice cuz why not!!!
brew doctor
brew doctor # It's actually required

# Update brew even though we just installed it
brew update
brew upgrade

# Important stuff for everyday use
brew install vim # Vim 8.0
brew install tmux
brew install node
brew install wget

# CL utilities
brew install tree


###########################################
# Setup Dev Environment                   #
###########################################

# Create the developer directory and go into it
mkdir -p ~/Code_Design/03_others/personalisation/
cd ~/Code_Design/03_others/personalisation/

# Clone the repo
git clone https://github.com/elviskasonlin/dsetup.git
cd dsetup

# Symlink the files in this repo to the Home directory
ln -s -F ~/Code_Design/03_others/personalisation/dsetup/vim/vimrc.txt ~/.vimrc
ln -s -F ~/Code_Design/03_others/personalisation/dsetup/tmux/tmux.conf.txt ~/.tmux.conf
ln -s -F ~/Code_Design/03_others/personalisation/dsetup/bash/bash_aliases.txt ~/.bash_aliases
ln -s -F ~/Code_Design/03_others/personalisation/dsetup/bash/bash_profile.txt ~/.bash_profile


###########################################
# Language specific stuff                 #
###########################################

# NodeJS
brew install python3

# Ruby
npm install -g tern brunch


###########################################
# Vim setup                               #
###########################################

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


###########################################
# General                                 #
###########################################

# Restart automatically if the computer freezes
systemsetup -setrestartfreeze on


###########################################
# Cleanup                                 #
###########################################

# Clean up brew
brew cleanup
brew doctor # Again!!!

# Quit all affected apps
for app in "Dock" "Finder" "SystemUIServer" "Terminal"; do
  killall "${app}" > /dev/null 2>&1
done


