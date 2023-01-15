# dotfiles

Welcome to the repository where I manage all my dotfiles and configurations :)
I run the same configuration in three environments:

 * linux (pop_os)
 * MacOS
 * Windows 11 (WSL2)

When it comes to look & feel, my main color schema across all environments and applications is [Nord](https://www.nordtheme.com/)

## installed apps

### all systems

 * tmux
 * [fzf](https://github.com/junegunn/fzf/releases) (we need version >=0.32, so probably just fetch the compiled bin to `~/.local/bin`)
 * awscli
 * alacritty
 * silversearcher-ag
 * teams
 * jq
 * htop
 * pnpm (via gpkg)
 * [fnm](https://github.com/Schniz/fnm#using-cargo-linuxmacoswindows)
 * [gpkg](https://github.com/Schniz/gpkg#installation)
 * [lazygit](https://github.com/jesseduffield/lazygit/releases)
 * [docker-desktop](https://docs.docker.com/desktop/linux/install/)
 * [vscode](https://code.visualstudio.com/download)
 * [chrome](https://www.google.com/chrome/)
 * [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
 * [delta](https://github.com/dandavison/delta/releases)
 * [rust](https://www.rust-lang.org/tools/install) (`rushup default nighly` to get rust `>=1.63.0` required by exa )
 * [exa](https://github.com/ogham/exa#cargo) (via cargo, to enable git integration)
 * [bat](https://github.com/sharkdp/bat#from-source)
 * [httpie](https://httpie.io/docs/cli/single-binary-executables)
 * [mkcert](https://github.com/FiloSottile/mkcert#linux)
 * [mongosh](https://www.mongodb.com/docs/mongodb-shell/install/)
 * [deno](https://deno.land/manual/getting_started/installation)
 * [go](https://go.dev/doc/install)
 * [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
 * [fd](https://github.com/sharkdp/fd#installation)
 * [bottom](https://github.com/ClementTsang/bottom)

### Linux

 * Vinagre

### mac

 * [homebrew](https://brew.sh/)
 * raycast
   * with jira, bitbucket, github and gitlab extensions installed
   * to deactivate spotlight unbind the default keybindings in the "spotlight" section of the system preferences and bind raycast to Command+space 
 * Xcode

### Windows

 * enable WSL2 - running recent [ubuntu](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#1-overview)
 * [windows terminal](https://github.com/microsoft/terminal)

## Fonts

 * [MesloLGS NF](https://github.com/romkatv/powerlevel10k#manual-font-installation)
 * [Cascadia Code](https://github.com/microsoft/cascadia-code)

## Untracked files

these files must be loaded from elsewhere

 * `.aws/credentials`
 * `.ssh/keys/*`

## Installing dotfiles on other system

Run

```
$ git clone --bare git@github.com:thekorn/dotfiles.git ${HOME}/.dotfiles
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

## Issues

 * fnm does not allow system as default (see [bug](https://github.com/Schniz/fnm/issues/681)) - thats why systemwide node should not be installed
 * on MacOS install pnpm globally with `curl -fsSL https://get.pnpm.io/install.sh | XDG_DATA_HOME=~/.local/share sh -` to get a unified setup

## Knowledgebase

 * some usefull git commands can be found [here](knowledgebase/git.md)
 * some usefull docker commands can be found [here](knowledgebase/docker.md)
 * qmk instructions can be found [here](knowledgebase/qmk.md)
 * OSX tricks can be found [here](knowledgebase/osx.md)

## Todos

- [x] unification of all environments
- [x] documentation of _almost_ all installed and used applications
- [ ] find a way of how to automize the install and update process of all applications
- [ ] move to firefox as main browser, with seperated profiles