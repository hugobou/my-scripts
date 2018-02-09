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
	if [[ "$DISPLAY" && `command -v gvim` ]]; then
		ED=gvim
	else
		ED=vim
	fi
	find -name "$1" -print -quit | xargs -n 1 $ED
}

function md ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}
