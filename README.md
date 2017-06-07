## Bootstrap the whole dotfile bundle

```bash
sudo apt install zsh vcsh myrepos git vim neovim tmux ctags cscope \
   terminator clang python-pip python-dev python3-pip
# python-neovim python2-neovim pyenv-virtualenv the_silver_searcher ripgrep
sudo pip2 install neovim
sudo pip3 install neovim

vcsh clone git@github.com:stfl/mr.git  # check out the base for all my dotfiles
~/.local/bin/mr_conf.sh                # edit which dotfiles should be pulled in
mr up                                  # pull all dotfiles and some dependencies
chsh -s $(which zsh)                   # zsh as default shell
```

## Dependencies

- zsh
- git
- vcsh
- myrepos
- vim || neovim
- tmux

### Optional

- terminator
- clang
- ctags
- cscope
- ripgrep || the_silver_searcher (ag)
- python-dev
- python2-pip
- python3-pip
- python2-neovim
- python3-neovim
- pyenv
- ...

## root config

```bash
sudo ln -sf $HOME/{.zprezto,.zpreztorc,.zprofile,.zshrc,.vim,.vimrc} /root
sudo ln -sf $HOME/.config/{nvim,dircolors.256dark} /root/.config
```
