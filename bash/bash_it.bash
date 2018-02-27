
alias subl='open -a "Sublime Text" $1'

# ENVIRONMENT VARS
export DEG_KEY="/Users/$USER/Documents/Setup/keys/$USER"
export EDITOR="/Applications/sublime"
export PATH="/usr/local/sbin:$PATH"

# SSH
alias deghq='ssh apps@deghq.com -i $DEG_KEY -o IdentitiesOnly=yes'
alias truba='ssh apps@truba.interaktivni-studio.com -i $DEG_KEY -o IdentitiesOnly=yes'

# LOCALHOST
alias apconf='sudo open -a $EDITOR /usr/local/etc/httpd/httpd.conf'
alias hosts='sudo open -a $EDITOR /private/etc/hosts'
alias vhosts='sudo open -a $EDITOR //usr/local/etc/httpd/extra/httpd-vhosts.conf'
alias phpini='sudo open -a $EDITOR /usr/local/etc/php/7.1/php.ini'
alias erlog='sublime /Users/$USER/work/logs/httpd/error_log'
alias apacherestart='sudo httpd -e info -k restart'
alias memcached-start='memcached -I2m -d start'
alias mariastart='brew services start mysql'
alias mariastop='brew services stop mysql'

# SYSTEM
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias la='ls -al'
alias bp='sudo open -a $EDITOR ~/.bash_profile' #alias edit
alias bpr='. ~/.bash_profile' #alias reload
alias fp='ps aux | grep '
alias hiddenshow='defaults write com.apple.finder AppleShowAllFiles YES;killall Finder'
alias hiddenhide='defaults write com.apple.finder AppleShowAllFiles NO;killall Finder'
alias crone='env EDITOR=vi crontab -e'
alias ports='sudo lsof -i -n -P | grep TCP'

#SHORTCUTS
alias sublime='sudo open -a $EDITOR'

# SCRIPTS
goodMorningClosure() {
	echo '# pull all repos';
	sh /Users/$USER/pull.sh
	echo '# update composer';
	composer self-update
	echo '# update brew';
	brew update;
}
alias jutro=goodMorningClosure

# COLORIZE
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
# Path to the bash it configuration
export BASH_IT="/Users/andrija/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='modern'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source "$BASH_IT"/bash_it.sh
