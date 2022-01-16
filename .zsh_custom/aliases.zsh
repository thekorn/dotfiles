

# bunte-dev
alias bunte="npm run cli --prefix ~burdastudios/bunte-dev"
alias bunte-pm2="npm run pm2 --prefix ~burdastudios/bunte-dev"
alias wo-bunte="wo bunte"

# config
alias zshconfig="code ~/.zshrc"
alias tmuxconfig="code ~/.tmux.conf"
alias szsh="source ~/.zshrc"

# helper
alias tms="tmux-sessionizer"
alias npm-check-updates="npx npm-check-updates -u"

# dotfiles management
# alias dotfiles="git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}"
# alias dfl=dotfiles_log
# alias dfd=dotfiles_diff

alias dfl="dotfiles log"
alias dfd="dotfiles diff"
alias lazydf="lazygit --work-tree=${HOME} --git-dir=${HOME}/.dotfiles/"

# vs code
alias ca="code -a"

# exa vs ls
alias ls="exa"
alias ll="exa --long --header --git --icons"
alias tree="ll --tree --level=4 -a -I=.git --git-ignore"

# neovim
alias nvim="nvim.appimage"
alias vim="nvim"

# local rush for testing
alias testrush="node ~/devel/github.com/thekorn/rushstack/apps/rush-lib/lib/start.js"


# Goes up the tree to the git root dir
alias g-='cd $(git rev-parse --show-toplevel || echo ".")'

# lazygit
alias lg="lazygit"