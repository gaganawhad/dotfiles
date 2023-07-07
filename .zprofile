# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

### Recommended by Homebrew
# Sets several environment variables required for Homebrew to function correctly
eval "$(/opt/homebrew/bin/brew shellenv)"

### Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

