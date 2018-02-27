# aliases
# basic
alias ll="ls -lahF --color=auto"
alias ls="ls -hF --color=auto"
alias lsl="ls -lhF --color=auto"
alias "cd.."="cd ../"
alias up="cd ../"
alias mkdir="mkdir -p"
alias v="vim"
alias vi="vim"
alias apt="sudo apt-get"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"

# git
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

# tools
alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias screenshot="scrot '%Y-%m-%d.jpg' -e 'mv $f ~/shots/'"
alias cpuclear="sudo rmmod intel_powerclamp"

# web development
alias cdweb="cd /var/www/html"
alias restartapache="sudo service apache2 restart"
alias restartmongo="sudo service mongod restart"
alias adminMongo="cd ~/bin/adminMongo && npm start"

# node
# alias node="sudo nodejs"
alias npm="sudo npm"

# configs
alias zshconfig="gedit ~/.zshrc"
alias ohmyzsh="gedit ~/.oh-my-zsh"
alias phpinicli="sudo gedit /etc/php5/cli/php.ini"
alias phpiniapache="sudo gedit /etc/php5/apache2/php.ini"

# misc
alias dim="xset dpms force off"
alias cl="clear"
alias ZZ="quit"

alias python="python3.6"
