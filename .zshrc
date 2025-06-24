export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export JIRA_API_TOKEN=

export PATH="~/.local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

export PATH=$PATH:$HOME/.config/composer/vendor/bin

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/usr/local/go/bin
# set PATH so it includes /usr/local/go/bin if it exists
if [ -d "/usr/local/go/bin" ] ; then
    PATH="/usr/local/go/bin:$PATH"
fi
export OPENAI_API_KEY=
alias pair="aider"
alias aaa="spf"
alias radio="cd && ./goradion-linux-amd64"

alias ff.pass="cd ~/firefox_decrypt/; python3 firefox_decrypt.py /home/camila/snap/firefox/common/.mozilla/firefox/vv9b9822.default"

alias wifipass="nmcli device wifi show-password"
alias h="helix"
alias y="yarn"
alias gss="git status"
alias ggs="~/git-summary $@"
alias git_diff_clean="git diff --ignore-space-at-eol -b -w "
alias git_future_work="git_diff_clean > future_work.patch; xclip -sel clip future_work.patch"
alias sharediff="git_future_work"

alias npm_cache_proxy="docker run -e REDIS_ADDRESS=host.docker.internal:6379 -p 6660:8080 -it -d pkgems/npm-cache-proxy && npm config set registry http://localhost:6660"
alias npm_cache_proxy_off="npm config set registry "
alias run="npm run $@"

# futurecommit "1h30m" "Your commit message"
alias futurecommit='export GIT_AUTHOR_DATE="$(date -d "1 day" --utc)" && export GIT_COMMITTER_DATE="$GIT_AUTHOR_DATE" && git commit -m'

mosh() {
  while ! command mosh "$@"; do
    sleep 5
  done
}

alias vizgit="
gource \
    -s .03 \
    -1920x1080 \
    --seconds-per-day 0.25 \
    --auto-skip-seconds .1 \
    --multi-sampling \
    --stop-at-end \
    --key \
    --highlight-users \
    --date-format "%d/%m/%y" \
    --hide mouse,filenames \
    --file-idle-time 0 \
    --max-files 0  \
    --background-colour 000000 \
    --font-size 25 \
    --output-ppm-stream - \
    --output-framerate 30 \
    --colour-images \
    --title 'Visualization' \
    | ffmpeg -y -r 30 -f image2pipe -vcodec ppm -i - -b 65536K movie.mp4"

#alias jiraforme="jira issue list -a$(jira me)"

#alias jiraforme_todo="jiraforme -s\"To Do\""
#alias jiraforme_doing="jiraforme -s\"In Progress\""
#alias jiraforme_pr="jiraforme -s\"PULL REQUEST\""
#alias jiraforme_done="jiraforme -s\"Done\""

# alias jiraforme="jira sprint list --current -a$(jira me)"

# Usage: j WEB-4250 "10m"
alias j="jira"
alias ji="j issue worklog add $@ --no-input"

alias asd="subl ~/dev/autorun/current_issue.txt"

# alias jfm_raw_todo="jiraforme_todo --plain --columns id --no-headers"
# alias jfm_raw_doing="jiraforme_doing --plain --columns id --no-headers"
# alias jfm_raw_pr="jiraforme_pr --plain --columns id --no-headers"
# alias jfm_raw_done="jiraforme_done --plain --columns id --no-headers"

# # mv all doing issues to pull request
# alias jiraforme_mv_all_doing_to_pr="jira issue move $(jfm_raw_doing) -s\"PULL REQUEST\""

alias lintthis="npx prettier 'src/**/*.{ts,js,gql}' -w; npx vue-cli-service lint --fix"
alias ping="prettyping"

function watcha {
    watch -d -n 30 $(alias "$@" | cut -d\' -f2)
}

function docker_restart {
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
    docker network rm $(docker network ls -q)
    docker-compose build
    docker-compose up -d
}

function docker_stop {
    docker stop $(docker ps -a -q)
}

alias lg="lazygit"
function docker_reset {
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
    docker network rm $(docker network ls -q)
    docker volume rm $(docker volume ls -q)
    docker system prune --all --force
}
alias ld="doko"
alias ldd="lazydocker"
# alias l="ls -la --color"
alias ..="cd .."
alias dev="cd ~/dev/"
alias emu="nvm use 16; firebase emulators:start --import=./firebase-data --export-on-exit"
alias dd="docker-compose up -d"
alias "?"="tldr"
alias "??"="shell-genie ask"
#alias "!"="shell-genie ask --explain"
alias chat="??"



# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Comment this line out to enable default emacs-like bindings
bindkey -v

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### CHANGE TITLE OF TERMINALS
case ${TERM} in
  xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|alacritty|st|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
        ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
    ;;
esac

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(zsh-autosuggestions)
plugins+=(compleat)
plugins+=(dirpersist)
plugins+=(dircycle) # cycle your directory stack {left,right} using Ctrl+Shift+Left/Right.
plugins+=(copyfile)
plugins+=(colorize)
plugins+=(history)
plugins+=(cp)
plugins+=(zsh-syntax-highlighting)
fpath=(~/.zsh/completions $fpath)

source $ZSH/oh-my-zsh.sh
source ~/.zprofile

# User configuration


# Set to this to use case-sensitive completion
export CASE_SENSITIVE="false"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"
export DISABLE_UPDATE_PROMPT="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"


# Set history file
HISTFILE=~/.zsh_history

# Set history size
HISTSIZE=500000

# Set the number of lines in $HISTFILE
SAVEHIST="${HISTSIZE}"

# # Enable history search with up and down arrows
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_e111SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

export PYTHON=/usr/bin/python3
export PATH="/usr/bin/python3:$PATH"
if [ -f "/home/camila/.config/fabric/fabric-bootstrap.inc" ]; then . "/home/camila/.config/fabric/fabric-bootstrap.inc"; fi



##### shopt

# save timestamp of command and duration
setopt extended_history

# Add commands as they are typed, don't wait until shell exit
setopt inc_append_history

# when trimming history, lose oldest duplicates first
setopt hist_expire_dups_first

# Do not write events to history that are duplicates of previous events
setopt hist_ignore_dups

# remove command line from history list when first character on the line is a space
setopt hist_ignore_space

# When searching history don't display results already cycled through twice
setopt hist_find_no_dups

# don't execute, just expand history
setopt hist_verify

# Stop annoying error when using asterisk in shell commands (i.e. scp server:*.txt .)
setopt nonomatch

# extended globbing, awesome!
setopt extendedGlob

# Turn on command substitution in the prompt (and parameter expansion and arithmetic expansion).
setopt promptsubst

# Uncomment for speed debug
# zprof
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export GPG_TTY=$(tty)

# Autocomplete.sh
#source autocomplete enable

# Autocomplete.sh CLI
#complete -F _autocompletesh_cli autocomplete



alias ollamaui="docker run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://127.0.0.1:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:cuda"
export PATH="/home/tg/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/tg/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
. "/home/tg/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit
# bun completions
[ -s "/home/tg/.bun/_bun" ] && source "/home/tg/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/tg/.lmstudio/bin"
# End of LM Studio CLI section


# pnpm
export PNPM_HOME="/home/tg/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
