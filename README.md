# My Scripts

This repo consists of little scripts that make my life easier.

## Bash RC

These scripts provide aliases and useful funtions. Make sure to source them from your .bashrc or .zshrc. I do this:

```bash
SCRIPTS_DIR=<PATH_TO_REPO>/shellrc
for f in `ls ${SCRIPTS_DIR}/*.aliases ${SCRIPTS_DIR}/*.sh`; do
	source "$f"
done
```

## Vim RC

These are settings for Vim/Gvim. For convenience you can create a symbolic link between the file in the repo and the actual .vimrc.

``` bash
ln -s <PATH_TO_REPO>/vimrc/vimrc .vimrc
```

## notes.py

A small tool to create Markdown notes.