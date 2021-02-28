# vterm initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies
if [ "$INSIDE_EMACS" != 'vterm' ]
    exit 0
end

source $EMACS_VTERM_PATH/etc/emacs-vterm.fish

function find_file
    set -q argv[1]; or set argv[1] "."
    vterm_cmd find-file (realpath "$argv")
end

alias emacs find_file
alias e find_file

function say
    vterm_cmd message "%s" "$argv"
end
