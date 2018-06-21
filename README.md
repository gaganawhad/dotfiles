### My Dotfiles

All my custom dotfiles

Installation
------------

``` bash
git clone git://github.com/gaganawhad/dotfiles ~/dotfiles
cd dotfiles
git submodule update --init 
```

NOTE: I coudn't get `--depth 1` to work with `git submodule update`

After that make symlinks to all the dotfiles example: 

``` bash
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
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
  
  
  


