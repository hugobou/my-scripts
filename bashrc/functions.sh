# Launch gvim if running X and gvim is installed
# otherwise launch vim.
function v() {
	if [[ "$DISPLAY" && `command -v gvim` ]]; then
		gvim -geometry 128x50 -p $*
	else
		vim $*
	fi
}

function fv()
{
# https://superuser.com/questions/336016/invoking-vi-through-find-xargs-breaks-my-terminal-why
	if [[ "$DISPLAY" && `command -v gvim` ]]; then
		ED=gvim
	else
		ED=vim
	fi
    if [[ "$ED" == "vim" ]]; then
        find -name "$1" -print -quit | xargs bash -c '</dev/tty vim "$@"' ignoreme
    else
    	find -name "$1" -print -quit | xargs -n 1 $ED
    fi
}

function md ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}
