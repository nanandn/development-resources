# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# Default to human readable figures
# alias df='df -h'
# alias du='du -h'

# Misc
alias h='history'
alias c='clear'
alias cls='clear'
#alias less='less -r'                          # raw control characters
#alias whence='type -a'                        # where, of a sort
#alias grep='grep --color'                     # show differences in colour
#alias egrep='egrep --color=auto'              # show differences in colour
#alias fgrep='fgrep --color=auto'              # show differences in colour

# Some shortcuts for different directory listings
#alias ls='ls -hF --color=tty'                 # classify files in colour
#alias dir='ls --color=auto --format=vertical'
#alias vdir='ls --color=auto --format=long'
alias ls='ls -GChF'
alias ll='ls -lh'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #

#
# Some useful commands
alias showhiddenfiles="defaults write com.apple.finder AppleShowAllFiles -boolean true;killall Finder"
alias hidehiddenfiles="defaults delete com.apple.finder AppleShowAllFiles; killall Finder"
alias adbreverse="adb reverse tcp:8081 tcp:8081"
alias killdns="sudo killall -TERM mDNSResponder"

# Port forwarding
alias showpfw="sudo pfctl -s nat"
alias removepfw="sudo pfctl -F all -f /etc/pf.conf"
setpfw() {
    echo "
    rdr pass inet proto tcp from any to any port ${0} -> 127.0.0.1 port ${1}
    " | sudo pfctl -ef -
    showpfw
}

pfw () {
    echo "
    rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 7001
    rdr pass inet proto tcp from any to any port 443 -> 127.0.0.1 port 8480
    " | sudo pfctl -ef -
    showpfw
}
