dotfiles
=========

Mainly my vim setup.

Also tmux, zsh, i3, top, x

Requirements
==================
vim --version
+python
+ruby

Install notes
==================

- git clone git@github.com:jonaslindmark/vimconfig.git ~/.vim
- in ~/.vim
    - git submodule init
    - git submodule update
- ln -s ~/.vim/vimrc ~/.vimrc
- ln -s ~/.vim/tmux.conf ~/.tmux.conf
- echo "source ~/.vim/zshrc" >> ~/.zshrc
- ln -s ~/.vim/lock /usr/local/bin/lock
- ln -s ~/.vim/autolock /usr/local/bin/autolock
