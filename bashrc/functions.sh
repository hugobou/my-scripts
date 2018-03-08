# Launch gvim if running X and gvim is installed
# otherwise launch vim.

# https://superuser.com/questions/336016/invoking-vi-through-find-xargs-breaks-my-terminal-why
# ED="bash -c '</dev/tty vim "$@"' ignoreme"
function get_editor() {
    if [[ "$DISPLAY" && `command -v gvim` ]]; then
        ED="gvim -geometry 128x50 -p"
    else
        ED="vim -p"
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
    FILE=$PATCH_FOLDER/$1.$SVNHEAD.patch
    svn diff --force > $FILE
}

function apply-patch()
{
    patch -p 0 < $1
}
