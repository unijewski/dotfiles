mkdir -p "$HOME/.vim"
ln -sfv "$DOTFILES_DIR/vim/vimrc" "$HOME/.vimrc"
ln -sfv "$DOTFILES_DIR/vim/colors" "$HOME/.vim/colors"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
