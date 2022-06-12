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

# fnm
eval "$(fnm env --use-on-cd --version-file-strategy recursive)"