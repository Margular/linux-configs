# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# change the path to your antigen.zsh location
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# usage: catimg some_picture.jpg
antigen bundle catimg

# colorize you man pages
antigen bundle colored-man-pages

# ccat <file> [files]: colorize the contents of the file (or files, if more than one are provided). If no arguments are passed it will colorize the standard input or stdin.
# cless <file> [files]: colorize the contents of the file (or files, if more than one are provided) and open less. If no arguments are passed it will colorize the standard input or stdin.
antigen bundle colorize

# example as below:
# $ mutt
# The program 'mutt' can be found in the following packages:
#  * mutt
#  * mutt-kz
#  * mutt-patched
# Try: sudo apt install <selected package>
# you need to install external packages by manually, see also: https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/command-not-found
antigen bundle command-not-found

# cd -<TAB>
antigen bundle dirpersist

# The git plugin provides many aliases and a few useful functions
# See also: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
antigen bundle git

# This plugin adds completion for Git
# and git repo marked as clean or dirty using "✔" and "✗"
antigen bundle gitfast

# This plugin provides completion definitions for some of the commands defined by git-extras
antigen bundle git-extras

# Provides a couple of convenient aliases for using the history command to examine your command line history
# Usage
# If h is called, your command history is listed. Equivalent to using history
# If hsi is called with an argument, a case insensitive grep search is performed on your command history, looking for commands that match the argument provided
# If hsi is called without an argument you will help on grep arguments
antigen bundle history

# you can type in any part of any previously entered command and press the UP and DOWN arrow keys to cycle through the matching commands
antigen bundle history-substring-search

# pp_json - pretty prints json
# is_json - returns true if valid json; false otherwise
# urlencode_json - returns a url encoded string for the given json
# urldecode_json - returns decoded json for the given url encoded string
antigen bundle jsontools

# Keeps track of the last used working directory and automatically jumps into it for new shells
antigen bundle last-working-dir

# nmap_open_ports - Scan for open ports on target
# nmap_list_interfaces - List all network interfaces on host where the command runs
# nmap_slow - Slow scan that avoids to spam the targets logs
# nmap_fin - Scan to see if hosts are up with TCP FIN scan
# nmap_full - Aggressive full scan that scans all ports, tries to determine OS and service versions
# nmap_check_for_firewall - TCP ACK scan to check for firewall existence
# nmap_ping_through_firewall - Host discovery with SYN and ACK probes instead of just pings to avoid firewall restrictions
# nmap_fast - Fast scan of the top 300 popular ports
# nmap_detect_versions - Detects versions of services and OS, runs on all ports
# nmap_check_for_vulns - Uses vulscan script to check target services for vulnerabilities
# nmap_full_udp - Same as full but via UDP
# nmap_traceroute - Try to traceroute using the most common ports
# nmap_full_with_scripts - Same as nmap_full but also runs all the scripts
# nmap_web_safe_osscan - Little "safer" scan for OS version as connecting to only HTTP and HTTPS ports doesn't look so attacking.
antigen bundle nmap

# pip zsh completion
antigen bundle pip

# This plugin loads pyenv into the current shell and provides prompt info via
# the 'pyenv_prompt_info' function. Also loads pyenv-virtualenv if available
antigen bundle pyenv

# Easily prefix your current or previous commands with sudo by pressing <esc> twice
antigen bundle sudo

# Alias	Command	Description
# ta	tmux attach -t	Attach new tmux session to already running named session
# tad	tmux attach -d -t	Detach named tmux session
# ts	tmux new-session -s	Create a new named tmux session
# tl	tmux list-sessions	Displays a list of running tmux sessions
# tksv	tmux kill-server	Terminate all running tmux sessions
# tkss	tmux kill-session -t	Terminate named running tmux session
# tmux	_zsh_tmux_plugin_run	Start a new tmux session
antigen bundle tmux

# Command	Description
# urlencode	URL-encodes the given string
# urldecode	URL-decodes the given string
antigen bundle urltools

# This ZSH plugin enhances the terminal environment with 256 colors
antigen bundle chrissicool/zsh-256color

# An oh-my-zsh plugin to help remembering those aliases you defined once
antigen bundle djui/alias-tips

# ZSH plugin to automatically switch python virtualenvs as you move between directories
antigen bundle MichaelAquilina/zsh-autoswitch-virtualenv

# Show execution time for long commands in zsh
antigen bundle popstas/zsh-command-time

# Type `git open` to open the GitHub page or website for a repository in your browser
antigen bundle paulirish/git-open

# you need to install autojump package by manually
# j foo: Jump To A Directory That Contains foo
# jo bar: Open File Manager To Directories (instead of jumping)
antigen bundle autojump

# Uploads a file from the command line to CloudApp, drops it into your clipboard (on a Mac, at least)
# This requires Aaron Russell's cloudapp_api gem: gem install cloudapp_api
# Requires you set your CloudApp credentials in ~/.cloudapp as a simple file of:
#   email
#   password
antigen bundle cloudapp

# Auto complete arguments and options for all docker commands
antigen bundle docker

# Extract any archive file
antigen bundle extract

# completion plugin for the gem command
antigen bundle gem

# starts gpg-agent (with ssh support) if not running and includes its environment variables
antigen bundle gpg-agent

# It suggests commands as you type, based on command history
antigen bundle zsh-users/zsh-autosuggestions

# Additional completion definitions for Zsh
# Using packages: Debian/Ubuntu and other several distributions
antigen bundle zsh-users/zsh-completions

# Fish shell like syntax highlighting for Zsh
# this should be the last bundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme romkatv/powerlevel10k
antigen apply

# set vim as default editor
export VISUAL="vim"
export EDITOR="vim"

# fzf: A command-line fuzzy finder. You need to install fzf by manually
# CTRL-T: Paste the selected files and directories onto the command-line
# CTRL-R: Paste the selected command from history onto the command-line
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Uncomment the following line if you want to change the command execution
# timestamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="yyyy-mm-dd hh:MM:SS "
# with this setting you need this alias (by default history is aliased
# to 'fc -l 1').
# alias history="fc -il 1"

# However, if you also want seconds, the solution above doesn't work as
# you would expect.
HIST_FORMAT="'%Y-%m-%d %T:'$(echo -e '\t')"
alias history="fc -t "$HIST_FORMAT" -il 1"

# In contrast to fs.unlink, del, and rimraf which permanently delete files, this only moves them to the trash, which is much safer and reversible
# install using: npm install --global trash-cli
alias rm="trash"

alias kubectl-pods-image="kubectl get pods -A -o jsonpath=\"{..image}\" | tr -s '[[:space:]]' '\n' | sort | uniq -c"
alias kubectl-nodes-image="kubectl get nodes -A -o jsonpath=\"{range ..images}{..names[*]}{end}\" | tr -s ' ' '\n' | sort | uniq -c"

bindkey '^[^[[C' forward-word
bindkey '^[^[[D' backward-word

# add your zsh code in this file
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

export PATH=$PATH:~/cross/x86_64/bin

# cross compile
function compile() {
    export ARCH=`echo $1 | cut -d '-' -f 1`
    case "$ARCH" in
        x86_64)
            export CROSS_COMPILE="x86_64-linux-musl-"
            export CC="x86_64-linux-musl-gcc"
            export CPP="x86_64-linux-musl-cpp"
            export CXX="x86_64-linux-musl-g++"
            export LD="x86_64-linux-musl-ld"
            export AR="x86_64-linux-musl-ar"
            export STRIP="x86_64-linux-musl-strip"
            export RANLIB="x86_64-linux-musl-ranlib"
            ;;
        armebhf)
            export CROSS_COMPILE="arm-linux-musleabihf-"
            export CC="arm-linux-musleabihf-gcc"
            export CPP="arm-linux-musleabihf-cpp"
            export CXX="arm-linux-musleabihf-g++"
            export LD="arm-linux-musleabihf-ld"
            export AR="arm-linux-musleabihf-ar"
            export STRIP="arm-linux-musleabihf-strip"
            export RANLIB="arm-linux-musleabihf-ranlib"
            ;;
        aarch64)
            export CROSS_COMPILE="aarch64-linux-musl-"
            export CC="aarch64-linux-musl-gcc"
            export CPP="aarch64-linux-musl-cpp"
            export CXX="aarch64-linux-musl-g++"
            export LD="aarch64-linux-musl-ld"
            export AR="aarch64-linux-musl-ar"
            export STRIP="aarch64-linux-musl-strip"
            export RANLIB="aarch64-linux-musl-ranlib"
            ;;
        *)
            echo $"Usage: compile {x86_64|armebhf|aarch64}[-static] [lib [lib2 [lib3...]]]"
            echo $"Example: compile x86_64-static openssl-1.1.1 libz"
            return
    esac

    export PREFIX=~/resources/static-binaries/$ARCH
    STATIC=`echo $1 | cut -d '-' -f 2`
    if [[ "$STATIC" == "static" ]]; then
        export CFLAGS="-static"
        export CXXFLAGS="-static"
        export LDFLAGS="-static"
    else
        export CFLAGS=""
        export CXXFLAGS=""
        export LDFLAGS=""
    fi

    export CPPFLAGS=""
    for lib in "${@:2}";
    do
        CPPFLAGS+=" -I$PREFIX/$lib/include"
        LDFLAGS+=" -L$PREFIX/$lib/lib"
    done
}

function masnewport() {
    [[ $# -lt 2 ]] && echo 'need two more files' && return
    comm <(grep -h '^open' ${@:1:-1} | awk '{print $4,$3}' | sort -u) <(grep -h '^open' ${@[-1]} | awk '{print $4,$3}' | sort -u)
}

# add your zsh code in this file
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

