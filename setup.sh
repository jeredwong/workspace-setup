#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install iterm2
brew install --cask iterm2
cp config/com.googlecode.iterm2.plist ~/Library/Preferences

# install raycast 
brew install --cask raycast
brew install node
npx ray import config/raycast-config.rayconfig

# install karabiner
brew install --cask karabiner-elements
cp -f config/karabiner.json ~/.config/karabiner