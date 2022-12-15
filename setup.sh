#!/bin/sh

slink()
{
  if test $1 "$HOME/$2"; then
   echo "$HOME/$2 already exists"
  else
    ln -s $(realpath $2) $HOME/$2
  fi
}

slink -d .config/nvim
slink -d .config/fish
slink -d .tmux
slink -f .tmux.conf

./.tmux/plugins/tpm/bin/install_plugins

# Install vim-plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# nvim --headless +PlugInstall +q
