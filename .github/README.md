# dotfiles for the linux environment

## installed apps

 * tmux
 * fzf
 * awscli
 * alacritty
 * Vinagre
 * silversearcher-ag
 * [fnm](https://github.com/Schniz/fnm#using-cargo-linuxmacoswindows)
 * [lazygit](https://github.com/jesseduffield/lazygit/releases)
 * [docker](https://docs.docker.com/desktop/linux/install/)
 * [vscode](https://code.visualstudio.com/download)
 * [chrome](https://www.google.com/chrome/)
 * [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
 * [delta](https://github.com/dandavison/delta/releases)
 * [rust](https://www.rust-lang.org/tools/install) (`rushup  default nighly` to get rust `>=1.63.0` required by exa )
 * [exa](https://github.com/ogham/exa#cargo) (via cargo, to enable git integration)

## install fonts

 * [MesloLGS NF](https://github.com/romkatv/powerlevel10k#manual-font-installation)


## Untracked files

these files must be loaded from elsewhere

 * `.aws/credentials`
 * `.ssh/keys/*`

## Installing dotfiles on other system

Run

```
$ git clone --bare git@github.com:thekorn/dotfiles.linux.v2.git ${HOME}/.dotfiles
$ alias dotfiles="git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}"
$ dotfiles config --local status.showUntrackedFiles no
$ dotfiles pull
$ dotfiles checkout
$ dotfiles submodule init
$ dotfiles submodule update --remote
$ source .zshrc
```

## Ressources

 * [Atlassian developer blog](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
 * [Harfang's Perch blog](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)
