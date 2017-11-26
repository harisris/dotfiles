# Path to your oh-my-zsh installation.
export ZSH=/Users/user/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="harisris"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew osx autojump colorize copydir copyfile cp history history-substring-search common-aliases fast-syntax-highlighting)

# User configuration

export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH=$CUDA_HOME/bin:$PATH
export GOPATH=$HOME/golang
export PATH=/usr/local/cuda/bin:/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:~/Scripts:${GOPATH//://bin:}/bin:$GOPATH/bin:/usr/local/lib:$GOROOT/bin
export GOROOT=/usr/local/opt/go/libexec
export CUDA_ROOT=/usr/local/cuda
export PYTHONSTARTUP=~/.pythonrc

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export LD_LIBRARY_PATH="$CUDA_ROOT/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="$CUDA_ROOT/extras/CUPTI/lib:$LD_LIBRARY_PATH"

fpath=(/usr/local/share/zsh-completions $fpath)

#export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#export MPLBACKEND="module://itermplot"
#export ITERMPLOT=rv
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

##################MY ALIASES###################
alias latex='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --kiosk --app=https://www.sharelatex.com'
alias brwe=brew
alias nv=nvim
alias cim=nvim
alias vim=nvim
alias jn='jupyter notebook'
alias tb=tensorboard
alias l='exa -rbghHliS --sort=size' 
alias cl='clear'
alias sz='source ~/.zshrc'
alias lt='exa -rbghHliST --sort=size'
alias du=du -hs * | sort -h
alias tbl="tensorboard --logdir='./logs'"
function appunlock() {
	sudo xattr -rd com.apple.quarantine /Applications/"$*"
	}


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# fd - cd to selected directory
#fd() {
#  local dir
#  dir=$(find ${1:-.} -path '*/\.*' -prune \
#                  -o -type d -print 2> /dev/null | fzf +m) &&
#  cd "$dir"
#}

#PATH="/Users/user/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/Users/user/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/Users/user/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/Users/user/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/Users/user/perl5"; export PERL_MM_OPT;
#export PATH="/usr/local/sbin:$PATH"

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
