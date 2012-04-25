# ------- Construct zee PATH -------

# Some common paths
PATH='/usr/local/sbin':'/usr/local/bin':$PATH
PATH=$HOME/bin:$PATH
# Add ruby gem executables, TODO: clean this up, stat.
PATH='/usr/local/Cellar/ruby/1.9.3-p125/bin':$PATH

# ------- Core Paths -------
export SRC='/Users/mdelaney/src'
export DROPBOX=$HOME'/Dropbox'

# ------- General Shortcuts -------

alias ls='ls -G'
alias LS='ls -lrt -G'
alias cdp='pushd > /dev/null'
alias home='cd ~'
alias dropbox='cd $DROPBOX'
alias src='cd $SRC'

# ------- Application Shortcuts -------
export LOCAL_APPS=$HOME'/Applications'

alias xcode="open -a XCode"
alias subl=$LOCAL_APPS'/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

# ------- WebKit Development -------
export WK_SRC=$SRC'/WebKit'

# Common Gotos
alias wk="cd $WK_SRC"

# Common Scripts
alias uw="Tools/Scripts/update-webkit"
alias wp="Tools/Scripts/webkit-patch"
alias svna="Tools/Scripts/svn-apply"
alias svncp="Tools/Scripts/svn-create-patch"
alias prep="Tools/Scripts/prepare-ChangeLog -o"
alias fw="Tools/Scripts/filter-build-webkit"

# Building
alias bw="Tools/Scripts/build-webkit"
alias bwd="Tools/Scripts/build-webkit --debug"
alias bwr="Tools/Scripts/build-webkit --release"
alias bwdf="bwd | fw"
alias bwdr="bwr | fw"

# Testing
alias rwt="Tools/Scripts/run-webkit-tests"
alias rwtd="Tools/Scripts/run-webkit-tests --debug"
alias rwtr="Tools/Scripts/run-webkit-tests --release"

# Safari
alias rs="Tools/Scripts/run-safari"
alias rsd="Tools/Scripts/run-safari --debug"
alias rsr="Tools/Scripts/run-safari --release"

# ------- Bash Shortcuts -------

alias matebash='mate ~/.bashrc'
alias sourcebash='source ~/.bashrc'

# ------- Rails Shortcuts -------

alias be='bundle exec'
alias anno='annotate -p before'

# ------- Device Debug Shortcuts -------

alias tcpd="sudo tcpdump -s 0 -A -i en0 port 80"

# ------- Useful Utilities -------

# Recursively downloads a static site, following links (only 3 deep)
alias rwget='wget -rkp -l3 -np' # Consider:  -nH --cut-dirs=1 to remove hostname and cut out dirs, respectively
# Sets up simple webserver for the current directory
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias now='ruby -e "puts Time.now.to_i"'
alias today='date +"%A, %B %d, %Y"'
alias yest='date -v-1d +"%A %B %d, %Y"'
alias recent='ls -lAt | head'
alias xc='find . -name "*.xcodeproj" | xargs open'
alias whatismyip='curl --silent http://automation.whatismyip.com/n09230945.asp; echo'

# ------- Local Web Server -------
WEBDOC="/Library/WebServer/Documents"
WEBPUB="$WEBDOC/pub"

pub() {
    b=$(basename $1)
    cp "$1" "$WEBPUB/$b"
}

# ------- Other -------

# Awesome return code smiley face from Jer
export PS1='$( if [ $? = 0 ]; then echo \[\e[32m\]:-\)\ ; else echo \[\e[31m\]:-\(\ ;fi;)\[\e[0m\]\u@\h:\W> '

# ------- TO BE SORTED -------
