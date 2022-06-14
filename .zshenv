. "$HOME/.cargo/env"
skip_global_compinit=1

# bunte mongo memory server
#export MONGOMS_VERSION=5.0.5
#export MONGOMS_DOWNLOAD_URL=https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu2004-${MONGOMS_VERSION}.tgz
export MONGOMS_PREFER_GLOBAL_PATH=1

export isLinux=true

# golang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# pnpm
export PNPM_HOME="${HOME}/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
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
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH