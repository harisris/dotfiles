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
alias jn='jupyter notebook'
alias l='exa -rbhHl --sort=size'
alias cl='clear'
alias sz='source ~/.zshrc'
alias lt='exa -rbghHlST --sort=size'
alias du=du -hs * | sort -h
alias tbc='tensorboard --logdir=$PWD'
alias yabr='launchctl kickstart -k "gui/${UID}/homebrew.mxcl.yabai"'

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

function splitflac() {
	find . -name "*.cue" -exec sh -c 'exec shnsplit -f "$1" -o flac -t "%n - %t" "${1%.cue}.flac"' _ {} \;
	}

# Variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PYTHONSTARTUP=~/.pythonrc
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_COLORIZE_STYLE="vim"
export MANPAGER="vim -c MANPAGER -"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/python/libexec/bin:/usr/local/go/bin:~/Scripts:/usr/local/lib:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH" #Hail the supreme leader pyenv. We bow down before your might.

# Environment Enhancement
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
#Also ruby
eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
