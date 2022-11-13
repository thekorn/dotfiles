. "$HOME/.cargo/env"
skip_global_compinit=1

# bunte mongo memory server
export MONGOMS_VERSION=5.0.9
##export MONGOMS_DOWNLOAD_URL=https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-darwin-${MONGOMS_VERSION}.tgz
export MONGOMS_PREFER_GLOBAL_PATH=1

export isLinux=true

# golang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# pnpm
export PNPM_HOME="${HOME}/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$PATH
export PATH=${HOME}/.local/bin/:${PATH}

# fnm
eval "$(fnm env --fnm-dir ${HOME}/.fnm --use-on-cd --version-file-strategy recursive)"

# android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# JAVA
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

# gpkg
# https://github.com/thekorn/gpkg
export PATH=~/.gpkg/bin:$PATH

# deno
export DENO_INSTALL="/home/thekorn/.deno"
export PATH=$DENO_INSTALL/bin:$PATH

# fzf oh-my-zsh plugin
export FZF_BASE=${HOME}/devel/github.com/junegunn/fzf
export DISABLE_FZF_KEY_BINDINGS="true"

# unique entries in $PATH
typeset -U PATH