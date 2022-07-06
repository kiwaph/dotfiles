#!/bin/bash

# Dependencies: NodeJS, ripgrep, git

# COPY CONFIG FILES
cp .tmux.conf $HOME
mkdir -p $HOME/.config/nvim
cp init.vim $HOME/.config/nvim

# INSTALL VIM-PLUG
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# INSTALL FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
