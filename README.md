### My Dotfiles

All my custom dotfiles

Installation
------------

``` bash
git clone git://github.com/gaganawhad/dotfiles ~/dotfiles
```

After that make symlinks to all the dotfiles example: 

``` bash
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
```


For iterm2 settings in com.googlecode.iterm2.plist enable 'load preferences
from custom folder or URL' preference in iterm2 and set the 
custom folder path to the dotfiles folder. Then use :

```bash
ln -s  ~/dotfiles/com.googlecode.iterm2.plist ~/Library/Preferences
```

