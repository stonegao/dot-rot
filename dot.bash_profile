function add_to_path {
  export PATH="$1:$PATH"
}

# Load everything up
source "$HOME/dot-rot/nakajima/gems"
source "$HOME/dot-rot/nakajima/mysql"
source "$HOME/dot-rot/nakajima/aliases"

# Vendor files
source "$HOME/dot-rot/vendor/git_completions.sh" 

# For stupid little hacky scripts
add_to_path '/Users/patnakajima/bin'
add_to_path "$HOME/dot-rot/bin"

# Color!
export CLICOLOR=1

# Edit!
export EDITOR='vi'

# How it should look
export PS1="[\w]\[\e[1m\]\$(parse_git_branch)\[\e[0m\] "

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

# Setup Rake tab completion
complete -C "$HOME/dot-rot/bin/rake_tabber" -o default rake

# Keep machine-specific stuff in .bash_local
touch ~/.bash_local
source ~/.bash_local
