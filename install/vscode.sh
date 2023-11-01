ln -sfv "$DOTFILES_DIR/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
cat "$DOTFILES_DIR/vscode/extensions.txt" | xargs -n 1 code --force --install-extension
