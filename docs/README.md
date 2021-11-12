# dotfiles for the linux environment

## installed apps


## Untracked files

these files must be loaded from elsewhere

 * `.aws/credentials`
 * `.ssh/keys/*`

## Installing dotfiles on other system

Run

```
$ git clone --bare git@github.com:thekorn/dotfiles.git ${HOME}/.dotfiles.git
$ alias dotfiles="git --git-dir=${HOME}/.dotfiles.git/ --work-tree=${HOME}"
$ dotfiles config --local status.showUntrackedFiles no
$ dotfiles pull
$ dotfiles submodule init
$ dotfiles submodule update
$ source .zshrc
```

## Ressources

 * [Atlassian developer blog](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
 * [Harfang's Perch blog](https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html)