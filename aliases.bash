#Git aliases
alias g='git'
alias ga='g add'
alias gpush='g psh'
alias gpull='g pll'
alias gl='g l'
alias gs='g s'
alias gd='g d'
alias gdc='g dc'
alias gcm='g cm'
alias gma='g ma'
alias gb='g b'
alias gbn='g bn'
alias gbd='g bd'
alias gbD='g bD'
alias gdmerged='g dmerged'
alias gc='g c'
alias gcp='g cp'
alias grslc='g rslc'
alias grh='g rh'
alias gcis='g cis'
alias gf='g f'
alias gri='g ri'
alias grom='g rom'
alias gamend='g amend'


# Aliases for vim
alias rmswp='find . -name "*.swp" -print0 | xargs -0 rm -rf; find . -name "*.swn" -print0 | xargs -0 rm -rf; find . -name "*.swo" -print0 | xargs -0 rm -rf; find . -name "*.swm" -print0 | xargs -0 rm -rf; find . -name "*.swk" -print0 | xargs -0 rm -rf; find . -name "*.swl" -print0 | xargs -0 rm -rf'

# Aliases for rails
alias r='rails'

# Aliases for grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


# Print PATH entries, one entry per line
alias path='echo -e ${PATH//:/\\n}'

# Alias for rubocop
alias rubocop='rubocop --display-cop-names'
alias rbc='rubocop'
alias rbc='rubocop -a'
alias rbcam='rubocop -a $(git ls-files --modified)'

# Command to delete temp vim ghost files
alias removeunwanted='find . -name "*.swp" -print0 | xargs -0 rm -rf; find . -name "*.swn" -print0 | xargs -0 rm -rf; find . -name "*.swo" -print0 | xargs -0 rm -rf'

# Alias for ag
alias ag='ag --path-to-ignore ~/.ignore --ignore={vendor/cache,spec/cassettes/,spec/fixtures/puffing_billy}'

