wo() {
    if [[ $# -ne 1 ]]; then
        echo "Error: needs a single working project, which is not provided"
        return 0
    fi

    case $1 in

        bunte)
            tmux-sessionizer ${HOME}/devel/bitbucket.org/burdastudios/
            code ${HOME}/.vs-code-workspaces/bunte.code-workspace
            ;;
        *)
            echo "Error: unknown project '$1', exit"
            return 0
            ;;

    esac
}