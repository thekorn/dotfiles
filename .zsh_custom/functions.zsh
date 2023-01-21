
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

update() {
  echo "Updating dotfiles..."
  dotfiles pull &> /dev/null
  echo "Updating submodules..."
  dotfiles submodule update --remote &> /dev/null
  echo "update brew ..."
  brew update &> /dev/null && brew upgrade &> /dev/null
  echo "dump brew packages ..."
  brew bundle dump -f --file ~/.config/Brewfile &> /dev/null
  echo "reload zsh config"
  source ~/.zshrc &> /dev/null
  echo "are there any changes?"
  dotfiles st
}


# flutter
function flutter-watch(){
  local PID_FILE="/tmp/tf$$.pid"
  TMUX='' tmux new-session \;\
    send-keys "flutter run --pid-file=$PID_FILE" Enter \;\
    split-window -v \;\
    send-keys "npx -y nodemon -e dart -x \"cat $PID_FILE | xargs kill -s USR1\"" Enter \;\
    resize-pane -y 5 -t 1 \;\
    select-pane -t 0 \;
  rm $PID_FILE;
}