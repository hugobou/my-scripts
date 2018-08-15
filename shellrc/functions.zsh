# Launch gvim if running X and gvim is installed
# otherwise launch vim.

# https://superuser.com/questions/336016/invoking-vi-through-find-xargs-breaks-my-terminal-why
# ED="bash -c '</dev/tty vim "$@"' ignoreme"
function get_editor() {
    # default to vim
    ED="vim -p"
    (( $+DISPLAY )) && [[ -n $(command -v gvim) ]] && ED="gvim -geometry 128x50 -p"
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

unalias md ## Oh my zsh defines this alias
function md ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}

function prettyxml()
{
    infilename="$1"
    outdirname=`dirname $infilename`
    outbasename=`basename $infilename`
    extension="pretty.${outbasename##*.}"
    outbasename="${outbasename%.*}"
    cat "$infilename" | xmllint -format - > ${outdirname}/${outbasename}.${extension}
}

function svn-patch()
{
    PATCH_FOLDER="$HOME/Hugo/patches"
    SVNHEAD=`svn log | head -n 2 | tail -n 1 | cut -f 1 -d ' '`
    TITLE=$1
    shift
    DATE=$(date "+%Y%m%d-%H%M")
    FILE=$PATCH_FOLDER/${TITLE}_${DATE}_${SVNHEAD}.patch
    svn diff --force $* > $FILE
    echo "Created path $FILE"
}

function apply-patch()
{
    patch -p 0 < $1
}
