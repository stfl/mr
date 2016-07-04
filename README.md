## FULL SYSTEM SETUP

```
sudo apt install vcsh myrepos git vim tmux ctags terminator

vcsh clone git@bitbucket.org:stefanlendl/mr.git
mr up
chsh -s $(which zsh)
```

### root config

```
sudo ln $HOME/{.zprezto,.zpreztorc,.zprofile,.zshrc,.vim,.vimrc} /root -sf
```