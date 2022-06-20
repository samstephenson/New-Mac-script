#!/bin/sh
#  Don't un-comment the line above

PACKAGES=(
    git
    imagemagick
    markdown
    npm
    postgresql
    python
    python3
)

CASKS=(
    1password
    figma
    google-chrome
    firefox
    dropbox
    raycast
    superhuman
    setapp
    adobe-creative-cloud
    sketch
    freedom
    logseq
    workflowy
    origami-studio
    blender
    linear-linear
    obsidian
    cron
    airtable
    nova
    discord
    hey
    notational-velocity
    whatsapp
    loom
    spotify
    zoomus
    karabiner-elements
    notion
    insomnia
    arq
    github
    
)

echo "Starting bootstrapping"

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask apps..."
brew install --cask ${CASKS[@]}

echo "Installing cocoapods"
sudo gem install cocoapods


# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true