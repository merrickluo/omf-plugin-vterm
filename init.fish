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

function edit
    set -q argv[1]; or set argv[1] "."
    vterm_cmd find-file (realpath "$argv")
end

function magit
    vterm_cmd magit
end

function man
    vterm_cmd man $argv
end

alias emacs edit
alias e edit
alias vim edit
alias E edit
