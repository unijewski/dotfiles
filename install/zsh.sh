sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sfv "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
ln -sfv "$DOTFILES_DIR/zsh/themes/unijewski.zsh-theme" "$HOME/.oh-my-zsh/themes/unijewski.zsh-theme"
