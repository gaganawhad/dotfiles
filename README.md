### My Dotfiles

All my custom dotfiles

Installation
------------

``` bash
git clone git@github.com:gaganawhad/dotfiles.git --recurse-submodules --shallow-submodules
```

After that make symlinks to all the dotfiles example: 

``` bash
ln -s ~/projects/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/projects/dotfiles/.vim ~/.vim
ln -s ~/projects/dotfiles/.vimrc ~/.vimrc
```

Vim plugins
------------

To install all git submodules use:

To install a vim plugin use:

`git submodule add https://github.com/vim-airline/vim-airline.git .vim/pack/my_plugins/start/vim-airline`

https://shapeshed.com/vim-packages/#adding-a-package


#### Installing YouCompleteMe on Linux
  Instructions taken from here: https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64
  - `sudo apt install build-essential cmake`
  - `sudo apt install python-dev python3-dev`
  - `./install.py --clang-completer`
  
  
Note about Git SubModules
-------------------------
I've encountered some problems with initializing git submodules using `git submodule update` to have them cloned only
to depth 1. Others seem to have had the same problem until recently.

NOTES:
  - YouCompleteMe needs the `--recursive` option when initializing submodules.

```
git clone git://github.com/gaganawhad/dotfiles ~/dotfiles
cd dotfiles
git submodule update --init --recursive --depth 1
```
