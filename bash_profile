# make prompt pretty
export PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

# Aliases
alias ll='ls -lG'
alias vs='open -n -a "Visual Studio"'

# case-insensitive tab completion
bind "set completion-ignore-case ON"

# don't need to press tab twice when more than one match
bind "set show-all-if-ambiguous ON"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# iTerm2 shell integration
source ~/.iterm2_shell_integration.`basename $SHELL`

# needed for rabbitmq-* 
PATH=$PATH:/usr/local/sbin

# needed for Python installed via Homebrew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
