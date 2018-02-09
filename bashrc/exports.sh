# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
#PS1="\$(if [[ \$? == 0 ]]; then echo \"\[\033[1;32m\]\342\234\223\"; else echo \"\[\033[1;31m\]\342\234\227\"; fi) \[\e[1;31m\]\u\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]\$\[\e[0m\] "
export PS1="\$(if [[ \$? == 0 ]]; then echo \"\[\033[1;32m\]\342\234\223\"; else echo \"\[\033[1;31m\]\342\234\227\"; fi) \[\e[1;31m\]\W\[\e[m\] \[\e[1;32m\]\$\[\e[0m\] "
export LESS="-i -r"
export EDITOR="vim"

