#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
echo ""
echo "📥 Updating dotfiles..."
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks
echo ""
echo "🔧 Creating symlinks..."
ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/apps-conf/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/apps-conf/git/.gitignore_global" ~


# Install software
echo ""
echo "💾 Installing base software..."
. "$DOTFILES_DIR/install/base.sh"
