if status is-interactive
    # Commands to run in interactive sessions can go here

    # zoxide initialization
    zoxide init fish | source

    #......................alias............................

    # core utils rust replacements
    alias ls="exa"
    alias l="exa -la"
    alias grep="rg"
    alias unzip="ripunzip unzip-file"
    alias cp="xcp"

    alias vim="nvim"
    alias nv="nvim"
    alias sunv="sudo -E -s nvim"
    alias svim="sudo -E -s nvim"
    alias tm="tmux"
    alias tma="tmux a"
    alias tk="tmux kill-session"
    alias tkk="tmux kill-server"

    alias fishrc="vim ~/.config/fish/config.fish"
    alias hyper="nvim ~/.config/hypr/hyprland.conf"
    alias niriconf="nvim ~/.config/niri/config.kdl"

    alias rat='rate-mirrors --allow-root arch | sudo tee /etc/pacman.d/mirrorlist'
    alias yy='yay -S'
    alias yr='yay -R'
    alias yrc='yay -Rsc'
    alias ariad='aria2c -s 32 -x 16'

    alias lokate="sudo updatedb && sudo locate"
    alias piper-play="piper-tts --model $HOME/.local/en_US-hfc_female-medium.onnx --output_file /tmp/temp_piper_audio.wav && mpv /tmp/temp_piper_audio.wav"

    alias winmount="sudo mkdir -p /run/media/gaz/windows_mount ; sudo mount /dev/nvme0n1p3 /run/media/gaz/windows_mount"
    alias budsbattery='echo "$(bluetoothctl info | grep "Name:" | cut -b 8-)  ->  $(bluetoothctl info | grep "Battery" | sed "s/.*(\([0-9]\+\))/\1/") %"'

    alias netscan="iwctl station $(iwctl device list | tail -n +5 | awk '{ print($2) }') scan on ; iwctl station $(iwctl device list | tail -n +5 | awk '{ print($2) }') get-networks"
    alias netconnect="iwctl station $(iwctl device list | tail -n +5 | awk '{ print($2) }') connect"
    alias netdevice="iwctl device $(iwctl device list | tail -n +5 | awk '{ print($2) }') set-property Powered"
    alias warpon="sh $HOME/scripts/warp_start.sh"
    alias warpoff="sh $HOME/scripts/warp_stop.sh"


    # git aliases
    # -------------------------------------------------------------------------
    alias gittoken="cat $HOME/Desktop/workspace/my_token | wl-copy -n"
    alias gcl="git clone"
    alias gcm="git commit -m"
    alias ga="git add"
    alias gps="git push"
    alias gpl="git pull"
    alias gst="git status"
    alias gck="git checkout"
    alias gl="git log --all --graph --decorate"
    alias gll="git log --all --graph --oneline --decorate"
    function gacp
        git add .
        git commit -m $argv[1]
        git push
    end
    # -------------------------------------------------------------------------



    #..............exports (environment vars)................

    set -x MOZ_ENABLE_WAYLAND 1
    set -x EDITOR nvim




    #.......................functions........................

    #multiple cd using dots
    function multicd
        echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
    end
    abbr --add dotdot --regex '^\.\.+$' --function multicd


    # greetings
    function fish_greeting

        set h (date +"%H")

        if test $h -gt 6 -a $h -le 12
            set gt "good morning"
        else if test $h -gt 12 -a $h -le 16
            set gt "good afternoon"
        else if test $h -gt 16 -a $h -le 22
            set gt "good evening"
        else
            set gt "good night"
        end

        set user (whoami)

        random choice "...:: welcome back hehhee sir ::..." "..:: hi $user , welcome again ::.." "..:: $gt $user , what do you have for me  ::.." "...:: here you go ::..." "Hello $user..::..How are you?" "..:: on your demand boss ::.." "..:: ready to receive commands sir ::.." "...:: hello $user , $gt ::..." "..:: $gt sir ::.." "..:: ready for action as always ::.." "..:: Hungry for commands boss ::.." "..:: $gt $user , what's next?" "..:: nice to see you again $user ::..." "..:: $gt $user , how are you ::.." "..:: welcome back sir ::.." "..:: what do you want ::.." "..:: just type it ::.." "..:: give me a command already ::.." "..:: hello mr $user , $gt to you ::.." "..:: what do you want this time huh ::.." "..:: at your service sir ::.." "..:: $gt sir , where have you been this whole time sir ::.." "..:: put it on fire ::.." | lolcat

        # echo $li[(math (random) % (count $li))] | lolcat
    end

end

# Non-interactive mode is used when the shell is executing a script or commands without direct user interaction.
