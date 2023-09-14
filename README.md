## Showcase :

| | |   
|:------------------------------:|:------------------------------:| 
|<img width="100%" src="https://github.com/cybergaz/void_repo/blob/master/screenshots/1676185887.png" alt="ss1">|<img width="100%" src="https://github.com/cybergaz/void_repo/blob/master/screenshots/1676186035.png" alt="ss2">|
|<img width="100%" src="https://github.com/cybergaz/void_repo/blob/master/screenshots/1676186789.png" alt="ss3">|<img width="100%" src="https://github.com/cybergaz/void_repo/blob/master/screenshots/1676202951.png" alt="ss4">|


Main purpose of this README is , I usually just forget what changes I've done , so ...    

<br>

___
<div align="center">

quick setup
===========

**To setup most of the things at ones :** (errors may raise out of nowhere)
<br>
    
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/cybergaz/scripts/main/hypr_setup.sh)"

</div>

___


<br>

<br>

## Required packages (mostly afaik) :

```
make wlroots wayland-protocols pkgconf ninja patch catch2 waybar-hyprland-git brightnessctl pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber xdg-desktop-portal-wlr grim slurp sddm hyprland-git 

```
<br>

## Additional packages :
    wofi kitty alacritty nemo ranger mako neofetch nitch btop viewnior swaybg swayidle swaylock-effects waylogout-git swww zoxide cliphist wtype wl-clipboard polkit-gnome


<br>

### Screen sharing / recording issue :
> remove every package named xdg-desktop-portal-* , check em by :  
    
    pacman -Q | grep xdg-desktop-portal-
> now just install : 

    yay -S pipewire wireplumber xdg-desktop-portal-hyprland-git

> more detailed docs :
[someone's notes](https://gist.github.com/PowerBall253/2dea6ddf6974ba4e5d26c3139ffb7580)

    
### Setup a polkit agent :
    yay -S polkit-gnome
>and then just initiate it at your hyprland exec section        

<br>

<div align="center">

## Theming
</div>

#### GTK theme 
>Download your fav theme and place the theme folder at : `/usr/share/themes/` or `.local/share/fonts`    
> > i just use        

    yay -S layan-gtk-theme-git
> > to set it up , just run        
    
    gsettings set org.gnome.desktop.interface gtk-theme Layan-Dark
> for dark theme , you have to make changes at your : `~/.config/gtk-3.0/settings.ini`         
> > settings.ini -->  `gtk-application-prefer-dark-theme=true`  &  `gtk-theme-name=Layan-Dark`         

#### GTK icons 

>Download and place in `/usr/share/icon`   ( i use Kora btw )    
    
    yay -S kora-icon-theme
> >and then just run          
    
    gsettings set org.gnome.desktop.interface icon-theme {theme-folder}

#### cursor theme 
> Download and put them in : `/usr/share/icons/`          
> >i use          

    yay -S catppuccin-mocha-dark-cursors 
> >and then edit `/usr/share/icons/default/index.theme`           
> >and also       

    gsettings set org.gnome.desktop.interface cursor-theme {theme-folder}
 
#### Fonts 
> Download ttf files and put them in : `/usr/local/share/fonts`     
> then give'em necesarry permissions like : `chmod 444 and 555`    
> 
>  refer to powerlevel10k github readme font section for mesloLGS-nf  fonts

#### SDDM theme 
>Download sddm theme you want , and place them at : `/usr/share/sddm/themes/`         
>set the theme , at `/usr/lib/sddm/sddm.conf.d/default.conf`        
>if that doesn't work , check out this place : `/etc/sddm.conf.d/`

#### GRUB theme
>Download and place at : `/usr/share/grub/themes/`            
>then just edit `/etc/default/grub` : GRUB_THEME=`/usr/share/grub/themes/{theme_name}/theme.txt`      
>a lil `grub-update` and you are good to go           

<br>

<div align="center">

## Extras
</div>

### for emoji's stuff

    yay -S wtype wl-clipboard ttf-twemoji-color noto-fonts-emoji
    
    git clone https://github.com/cybergaz/scripts.git
    cd scripts/wofi-emoji
    sudo cp wofi-emoji /usr/bin/


### pkgs

    mtpfs   --> for media transfer protocol
    jmtpfs --> for later version supports
    gvfs-mtp --> for automount and all ( usb android file transfer )
    gvfs-gphoto2  --> for picture transfer protocol



### Tips

>hijack power key,lid, idle related actions : `/etc/systemd/logind.conf`
---

>install `powertop and tlp`   --> for power management    
---

>if you're facing pulseaudio & bluetooth related issue then, uninstall everything related to pulseaudio , pipewire and bluetooth ( bluez and all.. ) and then install : 

    pulseaudio pulseaudio-bluetooth pulseaudio-ctl bluez bluez-utils blueman-git
---

>for nix packages search :    
  
    nix-channel --add https://nixos.org/channels/nixpkgs-unstable   
    sudo nix search nixpkgs --extra-experimental-features nix-command --extra-experimental-features flakes  
    nix-channel --update         
    nix-env -qaP --description | awk '{$2 = ":"; print $0;}' > "nps.cache"  
---

>to get rid of that 90s shutdown issue :   
>head to the `/etc/systemd/system.conf` and overwrite these line -> 
```
DefaultTimeoutStartSec=1s
DefaultTimeoutStopSec=1s
DefaultTimeoutAbortSec=
DefaultDeviceTimeoutSec=1s
```
---

>switching from `pulseaudio` to `pipewire`  
>install necessary packages   
```
yay -S pipewire pipewire-alsa pipewire-pulse pipewire-jack
```
>Stop the PulseAudio services and enable pipewire services: 
```
systemctl --user stop pulseaudio.socket
systemctl --user stop pulseaudio.service
systemctl --user disable pulseaudio.socket
systemctl --user disable pulseaudio.service

systemctl --user enable pipewire.socket
systemctl --user enable pipewire.service
systemctl --user start pipewire.socket
systemctl --user start pipewire.service
```
---

>if you are facing bluetooth headset `mic` related issue , then `try changing profile to HSP/HFP` using pavucontrol
---

>to adjust the ownership and permissions of drives :    
>then mount the partition first at desired location say /mnt and then the following commands   
```
sudo chown -R yourusername:yourusername /mnt
sudo chmod -R u+w /mnt
sudo usermod -aG dis,storage,uuidd yourusername
```
