# copy over the .zshrc file
yes | cp -v ~/.zshrc .

# backup brew stuff
rm BrewFile
brew bundle dump
