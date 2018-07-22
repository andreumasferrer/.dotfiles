DOTFILES_DIR="$HOME/.dotfiles"

# Load the shell dotfiles:
for DOTFILE in "$DOTFILES_DIR"/system/.{path,env,alias,prompt,function,extra}; do
	[ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE";
done;

# Clean up
unset DOTFILE

# Export
export DOTFILES_DIR

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion