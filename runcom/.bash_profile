DOTFILES_DIR="$HOME/.dotfiles"

# Load the shell dotfiles:
for DOTFILE in "$DOTFILES_DIR"/system/.{path,env,alias,prompt,function,extra}; do
	[ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE";
done;

# Clean up
unset DOTFILE

# Export
export DOTFILES_DIR
