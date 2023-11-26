
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

    random choice "...:: welcome back sir ::..." "..:: hi Gaz , welcome again ::.." "..:: $gt Gaz , what do you have for me  ::.." "...:: here you go ::..." "Hello Gaz..::..How are you?" "..:: on your demand boss ::.." "..:: ready to receive commands sir ::.." "...:: hello Gaz , $gt ::..." "..:: $gt sir ::.." "..:: ready for action as always ::.." "..:: Hungry for commands boss ::.." "..:: $gt Gaz , what's next?" "..:: nice to see you again Gaz ::..." "..:: $gt Gaz , how are you ::.." "..:: welcome back sir ::.." "..:: what do you want ::.." "..:: just type it ::.." "..:: give me a command already ::.." "..:: hello mr Gaz , $gt to you ::.." "..:: what do you want this time huh ::.." "..:: at your service sir ::.." "..:: $gt sir , where have you been this whole time sir ::.." "..:: put it on fire ::.." | lolcat

    # echo $li[(math (random) % (count $li))] | lolcat
end
