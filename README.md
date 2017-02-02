## FULL SYSTEM SETUP

```
sudo apt install vcsh myrepos git vim tmux ctags terminator clang python-pip python-dev python3-pip
sudo pip2 install neovim
sudo pip3 install neovim

vcsh clone git@bitbucket.org:stefanlendl/mr.git
# edit which dotfiles should be pulled with ~/.local/bin/mr_conf.sh
mr up
chsh -s $(which zsh)
```

### root config

```
sudo ln $HOME/{.zprezto,.zpreztorc,.zprofile,.zshrc,.vim,.vimrc} /root -sf
sudo ln -s $HOME/.config/{nvim,dircolors.256dark} /root/.config
```