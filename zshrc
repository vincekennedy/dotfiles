# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

#run fortune | cowsay
fortune | cowsay

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow gitfast)

DISABLE_UPDATE_PROMPT=true

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export ANDROID_HOME=$HOME/android-sdk-macosx
export PATH=$PATH:/usr/local/bin:/Users/vincekennedy/.rvm/gems/ruby-1.9.3-p392/bin:/Users/vincekennedy/.rvm/gems/ruby-1.9.3-p392@global/bin:/Users/vincekennedy/.rvm/rubies/ruby-1.9.3-p392/bin:/Users/vincekennedy/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:$ANDROID_HOME/platform_tools:$ANDROID_HOME/platforms:$ANDROID_HOME/tools	
export PATH=$HOME/bin:/usr/local/bin:$PATH

alias gcam='git commit -a -m'
alias gaa='git add -A'
alias gffs='git flow feature start'
alias glall='git pull --all'
alias gpf='gp -f'

gbclean(){ 
  gb -a --merged develop | grep -vEi 'develop|weekly|master|origin' | xargs git branch -D
}

#Make directory and move to it
mcd() {  
  test -e "$1" || mkdir -p "$1"; cd "$1";  
}  

#VI Mode in Command Line
bindkey -v

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

#Changing cursoer based on vim-mode input mode
function zle-keymap-select zle-line-init
{
  # change cursor shape in iTerm2
  case $KEYMAP in
    vicmd)      print -n -- "\E]50;CursorShape=0\C-G";;  # block cursor
    viins|main) print -n -- "\E]50;CursorShape=1\C-G";;  # line cursor
  esac

  zle reset-prompt
  zle -R
}

function zle-line-finish
{
  print -n -- "\E]50;CursorShape=0\C-G"  # block cursor
}

zle -N zle-line-init
zle -N zle-line-finish
zle -N zle-keymap-select
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
