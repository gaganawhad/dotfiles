#Git aliases
alias ga='git add'
alias gpush='git push'
alias gpull='git pull'
alias gpushd='git push origin develop'
alias gpulld='git pull origin develop'
alias gpushm='git push origin master'
alias gpullm='git pull origin master'
alias gl='git --no-pager log --format="%h%x09%ar%x09%ae%x09%s%x09" -n 10'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gcm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias grslc='git reset --soft HEAD^'
alias gcis='git commit --allow-empty -m "[ci skip]"'

# Aliases for vim
alias rmswp='find . -name "*.swp" -print0 | xargs -0 rm -rf; find . -name "*.swn" -print0 | xargs -0 rm -rf; find . -name "*.swo" -print0 | xargs -0 rm -rf; find . -name "*.swm" -print0 | xargs -0 rm -rf; find . -name "*.swk" -print0 | xargs -0 rm -rf; find . -name "*.swl" -print0 | xargs -0 rm -rf'

# Aliases for rails
alias r='rails'

# Aliases for grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Alias for rubocop
alias rubocop='rubocop --display-cop-names'

# Print PATH entries, one entry per line
alias path='echo -e ${PATH//:/\\n}'

# Rubocop 
alias rbc='rubocop'
alias rbc='rubocop -a'
alias rbcam='rubocop -a $(git ls-files --modified)'

# Command to delete temp vim ghost files
alias removeunwanted='find . -name "*.swp" -print0 | xargs -0 rm -rf; find . -name "*.swn" -print0 | xargs -0 rm -rf; find . -name "*.swo" -print0 | xargs -0 rm -rf'
