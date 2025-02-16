{ config, ... }:

let
  dotfiles = config.lib.file.mkOutOfStoreSymlink "/home/lrobert/Documents/nixos-hyprland-flake/home/config";
in
{
  xdg.configFile = {
    alacritty.source = "${dotfiles}/alacritty";
    helix.source = "${dotfiles}/helix";
    i3.source = "${dotfiles}/i3";
    picom.source = "${dotfiles}/picom";
    polybar.source = "${dotfiles}/polybar";
    "rainbow.png".source = "${dotfiles}/rainbow.png";
    rofi.source = "${dotfiles}/rofi";
    zellij.source = "${dotfiles}/zellij";
  };
}
