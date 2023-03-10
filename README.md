## Showcase :

| | |   
|:------------------------------:|:------------------------------:| 
|<img width="100%" src="https://github.com/cybergaz/void_repo/blob/master/screenshots/1676185887.png" alt="ss1">|<img width="100%" src="https://github.com/cybergaz/void_repo/blob/master/screenshots/1676186035.png" alt="ss2">|
|<img width="100%" src="https://github.com/cybergaz/void_repo/blob/master/screenshots/1676186789.png" alt="ss3">|<img width="100%" src="https://github.com/cybergaz/void_repo/blob/master/screenshots/1676202951.png" alt="ss4">|


Main purpose of this README is , I usually just forget what changes I've done , so ...    


## Dependencies :

```
make wlroots wayland-protocols pkgconf ninja patch catch2 waybar-hyprland-git brightnessctl pulseaudio-ctl grim slurp sddm hyprland-git 

```
> systemctl enable sddm ( must before starting your hyprland setup )    


## Additional packages :
    wofi kitty alacritty nemo ranger mako neofetch nitch btop viewnior swaybg swayidle swaylock-effects waylogout-git swww zoxide 


<br>

## Screen sharing / recording issue
    yay -S pipewire wireplumber
>then remove every package named xdg-desktop-portal-*    

    yay -S xdg-desktop-portal-wlr

>https://gist.github.com/PowerBall253/2dea6ddf6974ba4e5d26c3139ffb7580      

    
## Setup a polkit agent 
    yay -S polkit-gnome
>and then just initiate it at your hyprland exec section        

<br>

## Theming :

#### GTK theme 
>Download your fav theme and place the theme folder at : /usr/share/themes/         
> i just use        

    yay -S layan-gtk-theme-git
>to set it up , just run        
    
    gsettings set org.gnome.desktop.interface gtk-theme Layan-Dark
>for dark theme , you have to make changes at your : ~/.config/gtk-3.0/settings.ini         
>settings.ini -->  gtk-application-prefer-dark-theme=true  &  gtk-theme-name=Layan-Dark         

#### GTK icons 

>Download and place in /usr/share/icon   ( i use Kora btw )    
    
    yay -S kora-icon-theme
>and then just run          
    
    gsettings set org.gnome.desktop.interface icon-theme {theme-folder}

#### cursor theme 
> Download and put them in : /usr/share/icons/          
>i use          

    yay -S catppuccin-mocha-dark-cursors 
>and then edit "/usr/share/icons/default/index.theme"           
>and also       

    gsettings set org.gnome.desktop.interface cursor-theme {theme-folder}
 
#### Fonts 
> Download ttf files and put them in : /usr/local/share/fonts     
> then give'em necesarry permissions like : chmod 444 , chmod 555    
> i use 

    yay -S ttf-meslo-nerd ttf-meslo-nerd-font-powerlevel10k
> or refer to powerlevel10k github readme font section for mesloLGS-nf  fonts

#### SDDM theme 
>Download sddm theme you want , and place them at : /usr/share/sddm/themes/         
>set the theme , at "/usr/lib/sddm/sddm.conf.d/default.conf"        

#### GRUB theme
>Download and place at : /usr/share/grub/themes/            
>then just edit /etc/default/grub : GRUB_THEME="/usr/share/grub/themes/whitesur/theme.txt"      
>a lil grub-update and you are good to go           

<br>

## extras :

### pkgs

    mtpfs   --> for media transfer protocol
    jmtpfs --> for later version supports
    gvfs-mtp --> for automount and all ( usb android file transfer )
    gvfs-gphoto2  --> for picture transfer protocol

### tips

    > install lolcat and figlet via pip instead of pacman

    > hijack power key's deafult function : /etc/systemd/logind.conf.d/ --> HandlePowerKey=ignore

    > install powertop and tlp   --> for power management 

### for emoji's stuff

    yay -S wtype wl-clipboard ttf-twemoji-color noto-fonts-emoji
    
    git clone https://github.com/cybergaz/scripts.git
    cd scripts/wofi-emoji
    sudo cp wofi-emoji /usr/bin/


### Only For My short-term memory 📝

    # ______________Environment Variables
    > /etc/environment