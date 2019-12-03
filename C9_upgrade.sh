# untested 
# from https://gist.githubusercontent.com/singledigit/1daf7fd0392a42853514704b76bf0175/raw/a81148440099e6e31f1b4e361c106391d426fdcb/latest-sam.sh
# use: bash <(curl -sL http://bit.ly/c9sam)

#!/bin/bash
# Install latest SAM

# Homebrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# SAM
brew tap aws/tap
brew install awscli aws-sam-cli
source ~/.bash_profile
