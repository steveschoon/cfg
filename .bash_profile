# make prompt pretty
export PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

# Aliases
alias ll='ls -lG'
alias vs='open -n -a "Visual Studio"'
alias wj='subl --project ~/Projects/workjournal/workjournal.sublime-project --new-window'
alias vs='open -n /Applications/Visual\ Studio.app'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias mvim='open /Applications/MacVim.app'

# case-insensitive tab completion
bind "set completion-ignore-case ON"

# don't need to press tab twice when more than one match
bind "set show-all-if-ambiguous ON"

# needed for rabbitmq-* 
PATH=$PATH:/usr/local/sbin

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"
export PATH="~/.composer/vendor/bin:$PATH"

