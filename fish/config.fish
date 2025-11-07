if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/samsi/anaconda3/bin/conda
    eval /Users/samsi/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<
#
#
#

function yy
    set temp_file (mktemp -t "yazi-cwd-XXXXXX")
    yazi --cwd-file="$temp_file"
    if test -f "$temp_file"
        cd (cat "$temp_file")
        rm -f "$temp_file"
    end
end

#bind \cp yy
bind \e\[99\;6u yy

# --- Keep tmux pane aware of current working directory ---
if set -q TMUX
    function update_tmux_pwd --on-variable PWD
        tmux refresh-client -S
    end
end
