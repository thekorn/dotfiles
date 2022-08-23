
# fuzzy finder for aliases
aha() {
  local selected=$(alias | sort | fzf -q "$*")
  if [ ! -z "$selected" ]; then
    local cmd=$(awk -F'=' '{gsub(/\x27/, "", $2); print $2 }' <<< "$selected")
    eval ${=cmd}
  fi
}

# wttr.in
# https://github.com/chubin/wttr.in
wttr() {
    curl wttr.in/"${1:-}";
}

dotfiles() {
  local gitdir=${HOME}/.dotfiles/
  local workdir=${HOME}
  case $1 in
    log)
      GIT_DIR=${gitdir} GIT_WORK_TREE=${workdir} forgit::log
      ;;
    diff)
      GIT_DIR=${gitdir} GIT_WORK_TREE=${workdir} forgit::diff
      ;;
    *)
      GIT_DIR=${gitdir} GIT_WORK_TREE=${workdir} git $@
      ;;
  esac
}

edot() {
  local selected=$(dotfiles ls-files | fzf-tmux -p 50% --color=border:bright-blue --padding 1,5 --margin 1,0)
  [ -n "${selected}" ] && code ${selected}
}