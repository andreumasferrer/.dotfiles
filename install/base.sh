#HomeBrew
echo "➔ Installing HomeBrew, please wait..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Atom
echo "➔ Installing Atom, please wait..."
brew cask install atom
echo "➔➔ Creating Atom config symlink"
ln -svf "$DOTFILES_DIR/apps-conf/.atom/" ~/.atom
