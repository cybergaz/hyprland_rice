if status is-interactive
    # Commands to run in interactive sessions can go here

    # zoxide initialization
    zoxide init fish | source

    #......................alias............................

    alias ls="exa"
    alias l="exa -la"

    alias vim="nvim"
    alias nv="nvim"
    alias sunv="sudo -E -s nvim"
    alias sudovim="sudo -E -s nvim"

    alias fishrc="vim ~/.config/fish/config.fish"
    alias hyper="nvim ~/.config/hypr/hyprland.conf"

    alias rat='rate-mirrors --allow-root arch | sudo tee /etc/pacman.d/mirrorlist'

    alias lokate="sudo updatedb && sudo locate"

    alias gittoken="cat $HOME/Desktop/workspace/my_token | wl-copy -n"


    #..............exports (environment vars)................

    set -x MOZ_ENABLE_WAYLAND 1
    set -x EDITOR nvim




    #.......................functions........................

    #multiple cd using dots
    function multicd
        echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
    end
    abbr --add dotdot --regex '^\.\.+$' --function multicd

end

# Non-interactive mode is used when the shell is executing a script or commands without direct user interaction.
