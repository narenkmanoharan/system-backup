# install xcode
xcode-select --install

# install homebrew
mkdir ~/Homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

# install homebrew packages and casks
brew bundle

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# copy over .zshrc
yes | cp .zshrc ~/.zshrc
