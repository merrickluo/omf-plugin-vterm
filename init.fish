# vterm initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies
if [ "$INSIDE_EMACS" != vterm ]
    exit 0
end

source $EMACS_VTERM_PATH/etc/emacs-vterm.fish

function find-file
    set -q argv[1]; or set argv[1] "."
    vterm_cmd find-file (realpath "$argv")
end

function magit
    vterm_cmd magit
end

function man
    vterm_cmd man $argv
end

alias emacs find-file
alias e find-file
alias vim find-file
alias E find-file
