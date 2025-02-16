{ config, pkgs, ... }:

{
    programs.hyprland = {
        enable = true;
    };

    environment.systemPackages = with pkgs; [
      alacritty
      hyprpaper
      kitty
      libnotify
      mako
      qt5.qtwayland
      qt6.qtwayland
      swayidle
      swaylock-effects
      wlogout
      wl-clipboard
      wofi
      waybar
    ];
}
