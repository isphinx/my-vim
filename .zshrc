# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="re5et"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git jump osx themes rvm brew go battery)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export JAVA_HOME=`/usr/libexec/java_home`
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/bin

export GOROOT=/usr/local/Cellar/go/1.4/libexec
export GOPATH=$HOME/code/go
export GOBIN=$HOME/code/go/bin
export PATH=$PATH:$GOPATH/bin
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cobar="mysql -h127.0.0.1 -utest -ptest -P8066 -Ddb_traversing"
alias mmysql="mysql -h127.0.0.1 -uroot -p123456 -Ddb_traversing"
alias gp="git pull origin master:master ; git submodule foreach git pull origin master:master"
alias gc="git push origin master:mm"
hash -d t1=~/code/mobarts/transfer/TTransfer
hash -d t2=~/code/mobarts/traversing
hash -d mg=~/code/go/src

function gob
{
	cd ~/code/mobarts/traversing/go
	go build -o ../igo
	cd -
}
function tr
{
    cd ~/code/mobarts/transfer/TTransfer/frameworks/runtime-src/proj.ios_mac
    xcodebuild -project "TTransfer.xcodeproj" -configuration Debug -target "TTransfer iOS" -arch i386 -sdk iphonesimulator CONFIGURATION_BUILD_DIR="~/code/mobarts/transfer/TTransfer/runtime/ios" VALID_ARCHS="i386"
    cd ~/code
    ./ios-sim launch '~/code/mobarts/transfer/TTransfer/runtime/ios/主公别闹.app' --stdout a --stderr a &

    tail -f a
}

function poto
{
    cd ~/code/mobarts/traversing/app/proto_file/proto/
    protoc --python_out=.. *
    cd ~/code/mobarts/traversing/tool/
    python proto_to_one.py
    cp ~/code/mobarts/traversing/tool/traversing_one.proto ~/code/mobarts/transfer/TTransfer/res/pb/traversing_one.proto
    cd ~/code/mobarts/transfer/TTransfer/res/pb/
    sh proto.sh
}

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/lucas/code/cocos2d-x-3.3rc0/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH
