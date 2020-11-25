# Oh My Zsh!
export ZSH=/Users/srihari/.oh-my-zsh
ZSH_THEME="harisris"
plugins=(git 
	 colorize 
	 cp
	 emoji
	 k
	 history 
	 history-substring-search 
	 common-aliases 
	 zsh-autosuggestions 
	 fast-syntax-highlighting 
	 zsh-completions 
	 zsh-syntax-highlighting 
	 zsh-iterm-touchbar) 

source $ZSH/oh-my-zsh.sh

# Aliases
alias brwe=brew
alias cpwd="pwd | tr -d '\n' | pbcopy && echo 'pwd copied to clipboard.'"
alias {cim,vim,nv}=nvim
alias nvn='nvim ~/.vimrc'
alias nvz='nvim ~/.zshrc'
alias nva='nvim ~/.alacritty.yml'
alias l='exa -rbhHl --sort=size'
alias cl='clear'
alias sz='source ~/.zshrc'
alias lt='exa -rbghHlST --sort=size'
#alias du=du -hs * | sort -h
alias du=dust
alias yabr='launchctl kickstart -k "gui/${UID}/homebrew.mxcl.yabai"'
alias k='k --no-vcs'
alias ydla='youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0'

#ml
alias jnch_custom_css="mv ${HOME}/.jupyter/custom/custom.css.goo ${HOME}/.jupyter/custom/custom.css"
alias jnch_og_css="mv ${HOME}/.jupyter/custom/custom.css ${HOME}/.jupyter/custom/custom.css.goo"
alias tbc='tensorboard --logdir=${PWD}'
alias jn='jupyter notebook'
alias init_jn="nohup jupyter notebook > ${HOME}/gutter/jupyter_logs/jn.log 2>&1 &"

#tmux
alias t='tmux attach || tmux new-session'
alias ta='tmux attach -t'
alias tn='tmux new-session'
alias tl='tmux list-sessions'

# Functions
function tb() {
	echo $1;
	tensorboard --logdir="$1"
	}

function appunlock() {
	sudo xattr -rd com.apple.quarantine /Applications/"$*.app"
	}

function ydl() {
	youtube-dl --external-downloader aria2c --external-downloader-args "-j 16 -s 16 -x 16 -k 5M" -f bestvideo+bestaudio "$1"
	}

function trimff() {
	ffmpeg -i "$1" -ss "$2" -to "$3" -c copy "${1}_small.mp3"
	}

function splitflac() {
	find . -name "*.cue" -exec sh -c 'exec shnsplit -f "$1" -o flac -t "%n - %t" "${1%.cue}.flac"' _ {} \;
	}

function get_pid() {
    ps -A | grep $1 | grep -v grep | awk '{print $1}'
}

function get_proc() {
    ps -A | grep $1 | grep -v grep
}

function cdsem() {
	cd ${HOME}/learn/USI/$1_sem
}

# Variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PYTHONSTARTUP=~/.pythonrc
export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
export ZSH_COLORIZE_STYLE="vim"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#79797D,bg=#000000"
#export MANPAGER="nvim -c 'set ft=man' -"
export PAGER="nvim +Man!"
#export MANPAGER="/usr/local/bin/most -s"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/python/libexec/bin:/usr/local/go/bin:~/shelf:/usr/local/lib:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH" #Hail the supreme leader pyenv. We bow down before your might.
export PYTHONPATH="${PYTHONPATH}:/Users/srihari/shelf"

# Environment Enhancement

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
#Also ruby
eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
