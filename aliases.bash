#Git aliases
alias g='git'
alias ga='g add'
alias gpush='g push'
alias gpull='g pull'
alias gpushd='g push origin develop'
alias gpulld='g pull origin develop'
alias gpushm='g push origin master'
alias gpullm='g pull origin master'
alias gl='g l'
alias gs='g s'
alias gd='g d'
alias gdc='g dc'
alias gcm='g cm'
alias gma='g ma'
alias gb='g b'
alias gc='g c'
alias grslc='g rslc'
alias gcis='g cis'

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
