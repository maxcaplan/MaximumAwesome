if status is-interactive
    # Commands to run in interactive sessions can go here
    function fish_greeting
        colorscript -r
    end
end

starship init fish | source
