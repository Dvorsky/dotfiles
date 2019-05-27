###############
#   ALIASES   #
###############

# ENVIRONMENT VARS
export DEG_KEY="/Users/$USER/.ssh/andrijadvorski"
export PATH="/usr/local/sbin:$PATH"
export WORK="$HOME/work"

# SSH
alias deghq='ssh apps@deghq.com -i $DEG_KEY -o IdentitiesOnly=yes'
alias do-simuni='ssh root@68.183.78.27 -i ~/ssh/simuni-do'
alias truba='ssh apps@truba.interaktivni-studio.com -i $DEG_KEY -o IdentitiesOnly=yes'



# BASIC
alias ll="ls-go -alkSinL"
alias ls="ls-go -an"
alias lsall="ls-go -rn"
alias "cd.."="cd ../"
alias up="cd ../"
alias mkdir="mkdir -p"
alias v="vim"
alias vi="vim"
alias subl='open -a "Sublime Text" $1'

# SYSTEM
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias la='ls -al'
alias bpr='. ~/.bash_profile' #alias reload
alias fp='ps aux | grep '
alias hiddenshow='defaults write com.apple.finder AppleShowAllFiles YES;killall Finder'
alias hiddenhide='defaults write com.apple.finder AppleShowAllFiles NO;killall Finder'
alias crone='env EDITOR=vi crontab -e'
alias ports='sudo lsof -i -n -P | grep TCP'

# GIT
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gd="git diff"
alias gf="git fetch"
alias gm="git merge"
alias gr="git rebase"
alias gp="git push"
alias gu="git unstage"
alias gco="git checkout"

# TOOLS
alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias screenshot="scrot '%Y-%m-%d.jpg' -e 'mv $f ~/shots/'"

alias symf="bin/console"

# alias to love
alias love="/Applications/love.app/Contents/MacOS/love"

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
alias work="cd $WORK"
alias xdebugon='export XDEBUG_CONFIG="idekey=PHPSTORM"'

# CONFIGS
alias shconfig='open -a $EDITOR $HOME/.zsh/ .'

# MISC
alias cl="clear"

# QoL
alias pip="pip3"
