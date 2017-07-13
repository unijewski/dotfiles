mkdir -p "$HOME/.vim"
ln -sfv "$DOTFILES_DIR/vim/vimrc" "$HOME/.vimrc"
ln -sfv "$DOTFILES_DIR/vim/colors" "$HOME/.vim/colors"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
