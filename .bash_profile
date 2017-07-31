[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
      # We have color support; assume it's compliant with Ecma-48
      # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
      # a case would tend to support setf rather than setaf.)
      color_prompt=yes
  else
      color_prompt=
  fi
fi

if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;36m\]\@ \[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\
\w\[\033[01;36m\]$(git branch &>/dev/null; if [ $? -eq 0 ]; then \
echo " ($(git branch | grep '^*' |sed s/\*\ //))"; fi)\[\033[00m\]: '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w: '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
  PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
  ;;
*)
  ;;
esac
 
########## Most of my personal configurations ###########

#### Source aliases if they exist
if [ -f ~/dotfiles/aliases.bash ]; then
   source ~/dotfiles/aliases.bash
fi

### Add scripts to path
export PATH=$PATH:~/dotfiles/scripts

### Add git-completion script
if [ -f ~/dotfiles/scripts/git-completion.bash ]; then
  source ~/dotfiles/scripts/git-completion.bash
fi

# SET EDITOR to vim
export EDITOR=vim

### If ~/dotifles/.localrc file exists then the settings in that file will override all the settings in this file
# Use it for things like setting a default folder for terminal apps to open to which could be very specific to 
# the machine.
if [ -f ~/dotfiles/.localrc ]; then
   source ~/dotfiles/.localrc
fi

##### Platform specific commands
## Any platform specific commands can be added in as so:
# if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
# # commands
# fi

########## Updates for other software ###########

### Recommended by homebrew
homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
