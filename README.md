## FULL SYSTEM SETUP

```
sudo apt install vcsh myrepos git vim tmux ctags terminator clang python2 python3
pip2 install neovim
pip3 install neovim

vcsh clone git@bitbucket.org:stefanlendl/mr.git
mr up
chsh -s $(which zsh)
```

### root config

```
sudo ln $HOME/\{.zprezto,.zpreztorc,.zprofile,.zshrc,.vim,.vimrc} /root -sf
sudo ln -s $HOME/.config/{nvim,dircolors.256dark} /root/.config
```