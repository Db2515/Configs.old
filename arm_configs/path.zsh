path_prepend() {
    if [ -d $1 ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$1${PATH:+":$PATH"}"
    fi
}

#repo
# Home bin directory
HOME_BIN=$HOME/bin
path_prepend $HOME_BIN
