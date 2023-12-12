########## Prompt Customizations ###########
# Define a function to get current git branch
function git_branch {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# If debian_chroot is set, show it in the prompt
if [[ -n $debian_chroot ]]; then
    chroot="($debian_chroot)"
fi

# Set the prompt
setopt PROMPT_SUBST
# Following command puts username and machine name in the prompt. I don't need it. Uncomment if you want that. 
#export PROMPT='%F{cyan}${chroot}%D{%L:%M%P} %F{green}%n@%m %F{magenta}%~%F{cyan}$(git_branch)%f: '
# Simplified prompt
export PROMPT='%F{cyan}${chroot}%t %F{magenta}%~%F{green}$(git_branch)%f: '


# Use vi key bindings in terminal
bindkey -v

# Source aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Git completion script. See https://www.oliverspryn.com/blog/adding-git-completion-to-zsh:w0:w0
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Load localrc file if it exists
[[ -f ~/.localrc ]] && source ~/.localrc

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/gaganawhad/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;