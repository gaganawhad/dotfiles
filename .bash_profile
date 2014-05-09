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


#Git aliases
alias ga='git add'
alias gpush='git push'
alias gpull='git pull'
alias gpushd='git push origin develop'
alias gpulld='git pull origin develop'
alias gpushm='git push origin master'
alias gpullm='git pull origin master'
alias gpullr='git pull origin feature/refactor-mpx-exporter-code'
alias gpushr='git push origin feature/refactor-mpx-exporter-code'
alias gl='git log --pretty=format:"%h%x09%ar%x09%ae%x09%s%x09%Cblue"'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gcm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gcl='git clone'
alias grslc='git reset --soft HEAD^' 
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias cuke='bundle exec cucumber' 
alias cukewip='bundle exec cucumber --profile wip' 
alias migratedb='bundle exec rake db:migrate' 
alias removeunwanted='find . -name "*.swp" -print0 | xargs -0 rm -rf; find . -name "*.swn" -print0 | xargs -0 rm -rf; find . -name "*.swo" -print0 | xargs -0 rm -rf; find . -name "*.swm" -print0 | xargs -0 rm -rf; find . -name "*.swk" -print0 | xargs -0 rm -rf; find . -name "*.swl" -print0 | xargs -0 rm -rf'
alias grep='grep --color=auto' #sets color on by default on the grep action
alias gadeleted='git rm $(git ls-files --deleted)'
alias r='rails'



alias production_console='ssh www.desiringgod.org && dgn && rails c' 
#export PS1="\u@\h:\w: "
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin 

### Recommended by homebrew
homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### If ~/dotifles/.localrc file exists then the settings in that file will override all the settings in this file
if [ -f ~/dotfiles/.localrc ]; then
   source ~/dotfiles/.localrc
fi

