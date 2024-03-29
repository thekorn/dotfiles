wo() {
    if [[ $# -ne 1 ]]; then
        echo "Error: needs a single working project, which is not provided"
        return 0
    fi

    case $1 in

        bunte)
            tmux-sessionizer ${HOME}/devel/bitbucket.org/burdastudios/bunte-renderer
            code ${HOME}/devel/bitbucket.org/burdastudios/bunte-renderer
            ;;
        bf)
            tmux-sessionizer ${HOME}/devel/github.com/thekorn/bf-content-platform/
            code ${HOME}/devel/github.com/thekorn/bf-content-platform/
            ;;
        dotfiles)
            local gitdir=${HOME}/.dotfiles/
            local workdir=${HOME}
            tmux-sessionizer dotfiles
            GIT_DIR=${gitdir} GIT_WORK_TREE=${workdir} code $(dotfiles ls-tree -r HEAD | grep blob | cut -f 2  | awk -v home=${HOME} '{print home "/" $1}')
            ;;
        *)
            echo "Error: unknown project '$1', exit"
            return 0
            ;;

    esac
}
