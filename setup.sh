#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install iterm2
brew install --cask iterm2
cp config/com.googlecode.iterm2.plist ~/Library/Preferences
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-autosuggestions
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# install tmux
brew install tmux
cp config/.tmux.conf ~/.tmux.conf

# install raycast 
brew install --cask raycast
brew install node
npx ray import config/raycast-config.rayconfig

# install karabiner
brew install --cask karabiner-elements
cp -f config/karabiner.json ~/.config/karabiner/karabiner.json

# install rectangle
brew install --cask rectangle
