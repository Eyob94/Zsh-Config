# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rust docker docker-compose z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
export PATH=$PATH:/squashfs-root/usr/bin/nvim
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin





# .zshrc
alias zconf="cd ~/.config/zsh"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias nconf="cd ~/.config/nvim"
alias tconf="cd ~/.config/tmux"
alias n="nvim"
alias n.="nvim ."
alias zso="source ~/.config/zsh/.zshrc"
alias tso="tmux source-file ~/.config/tmux/tmux.conf"
alias t="tmux"

# fzf finders
alias sd='cd "$((fd . --type d | fzf) | sed "s/^$/""/")"'
alias sdh='cd "$((fd . --full-path ~ --type d | fzf) | sed "s/^$/""/")"'
alias sdr='cd "$((fd . --full-path / --type d | fzf) | sed "s/^$/""/")"'
# alias sf='xdg-open "$((fd . --type f | fzf) | sed "s/^$/""/")" &> /dev/null' # No preview
# alias sfh='xdg-open "$((fd . --full-path ~ --type f | fzf) | sed "s/^$/""/")" &> /dev/null' # No preview
alias sf='xdg-open "$((fd . --type f | fzf --preview "cat {}" | xargs) | sed "s/^$/""/")" &> /dev/null' # With preview
alias sfh='xdg-open "$((fd . --full-path ~ --type f | fzf --preview "cat {}" | xargs) | sed "s/^$/""/")" &> /dev/null' # With preview
alias sfr='xdg-open "$((fd . --full-path / --type f | fzf) | sed "s/^$/""/")" &> /dev/null'

alias storebrew="cd attach-session -t storebrew"
alias alaconf="cd /mnt/c/Users/moni/AppData/Roaming/alacritty"


# pnpm
export PNPM_HOME="/home/moni/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
#
if [ -f ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
