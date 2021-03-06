# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
source ~/.oh-my-zsh/plugins/git/git.plugin.zsh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Github PR Sources
export GITHUB_PR_USER=braydonburn
export GITHUB_AUTH_TOKEN=7894e4abf642a248a3df9d007f637ec9c0a94ec1
export PATH="$PATH:/home/braydon/Code/clipchamp-stack/scripts/bin" 

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

export NODE_OPTIONS=--max_old_space_size=16384

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
plugins=(git zsh-completions zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
export CUSTOM_GAE_PROJECT_ID="clipchamp-dev-braydon-yvfaz"
export BITBUCKET_PR_USER="braydonburn"
export BITBUCKET_PR_APP_PW="dKDRzC3DAWUumkvBfwea"

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/braydon/Code/clipchamp-stack/backend/lambda/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/braydon/Code/clipchamp-stack/backend/lambda/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/braydon/Code/clipchamp-stack/backend/lambda/node_modules/tabtab/.completions/sls.zsh ]] && . /home/braydon/Code/clipchamp-stack/backend/lambda/node_modules/tabtab/.completions/sls.zsh

export PATH="/home/braydon/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

function stopwatch(){
  date1=`date +%s`; 
   while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
   done
}


# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/braydon/Code/clipchamp-stack/backend/lambda/node_modules/tabtab/.completions/slss.zsh ]] && . /home/braydon/Code/clipchamp-stack/backend/lambda/node_modules/tabtab/.completions/slss.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /home/braydon/.local/bin/virtualenvwrapper.sh

export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH



export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
