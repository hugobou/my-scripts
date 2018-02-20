# Launch gvim if running X and gvim is installed
# otherwise launch vim.

# https://superuser.com/questions/336016/invoking-vi-through-find-xargs-breaks-my-terminal-why
# ED="bash -c '</dev/tty vim "$@"' ignoreme"
function get_editor() {
    if [[ "$DISPLAY" && `command -v gvim` ]]; then
        ED="gvim -geometry 128x50 -p"
    else
        ED="vim"
    fi
    echo $ED
}

function v() {
    $(get_editor) $*
}

function f() {
    for ext in $*; do
        find -name $ext
    done
}

function fv()
{
    $(get_editor) $(f $*)
}

function md ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}
