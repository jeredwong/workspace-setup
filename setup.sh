#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install ghostty
brew install --cask ghostty
cp config/ghostty-config ~/.config/ghostty
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
