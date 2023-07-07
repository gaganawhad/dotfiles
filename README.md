### My Dotfiles

All my custom dotfiles

Installation
------------

``` bash
git clone git@github.com:gaganawhad/dotfiles.git --recurse-submodules --shallow-submodules
cd dotfiles
cp home/.localrc.example home/.localrc
ln -s $PWD/home/.localrc ~/.localrc
ln -s $PWD/home/.vim ~/.vim
ln -s $PWD/home/.vimrc ~/.vimrc
ln -s $PWD/home/.git-completion.bash ~/.git-completion.bash
ln -s $PWD/home/.gitignore.global ~/.gitignore.global
ln -s $PWD/home/.gitconfig ~/.gitconfig
ln -s $PWD/home/.zsh ~/.zsh
ln -s $PWD/home/.aliases ~/.aliases
ln -s $PWD/home/.pryrc ~/.pryrc
ln -s $PWD/home/.zshenv ~/.zshenv
ln -s $PWD/home/.zshrc ~/.zshrc
ln -s $PWD/home/.zprofile ~/.zprofile
ln -s $PWD/home/.bash_profile ~/.bash_profile
ln -s $PWD/home/scripts/clean_local_branches /usr/local/bin/clean_local_branches
```

Vim plugins
------------

To install all git submodules use:

To install a vim plugin use:

`git submodule add https://github.com/vim-airline/vim-airline.git home/.vim/pack/my_plugins/start/vim-airline`

https://shapeshed.com/vim-packages/#adding-a-package


#### Installing YouCompleteMe on Linux
  Instructions taken from here: https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64
  - `sudo apt install build-essential cmake`
  - `sudo apt install python-dev python3-dev`
  - `./install.py --clang-completer`
  
  
Note about Git SubModules
-------------------------
I've encountered some problems with initializing git submodules using `git submodule update` to have them cloned only
to depth 1. Others seem to have had the same problem until recently. See [this](https://stackoverflow.com/questions/2144406/how-to-make-shallow-git-submodules).

NOTES:
  - YouCompleteMe needs the `--recursive` option when initializing submodules.

```
git clone git://github.com/gaganawhad/dotfiles ~/dotfiles
cd dotfiles
git submodule update --init --recursive --depth 1
```
