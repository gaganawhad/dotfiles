### My Dotfiles

All my custom dotfiles

Installation
------------

``` bash
mkdir ~/projects; cd ~/projects
git clone git@github.com:gaganawhad/dotfiles.git --recurse-submodules --shallow-submodules
cd dotfiles
cp home/.localrc.example home/.localrc

# Create symlinks
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
ln -s $PWD/home/scripts/clean_local_branches.sh /usr/local/bin/clean_local_branches
```

Set up VIM plugins
 - Use `:Copilot setup` to [set up Github Copilot](https://github.com/github/copilot.vim?tab=readme-ov-file#getting-startedhttps://github.com/github/copilot.vim?tab=readme-ov-file#getting-started)
 - [Install YouCompleteMe](https://github.com/ycm-core/YouCompleteMe?tab=readme-ov-file#macos) if you so choose.

And that should be it!

Installing YouCompleteMe on Linux
------------
  Instructions taken from here: https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64
  - `sudo apt install build-essential cmake`
  - `sudo apt install python-dev python3-dev`
  - `./install.py --clang-completer`

Vim plugins
------------
To install a new vim plugin use this command as an example:

`git submodule add git@github.com:vim-airline/vim-airline.git home/.vim/pack/my_plugins/start/vim-airline`

See [this](https://shapeshed.com/vim-packages/#adding-a-package).

