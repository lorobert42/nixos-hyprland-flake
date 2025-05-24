{ pkgs, lib, ... }:

{
  services = {
    dbus.enable = true;
    openssh.enable = true;

    displayManager = {
      sddm.enable = true;
      sddm.package = lib.mkForce pkgs.kdePackages.sddm;
      sddm.theme = "catppuccin-mocha";
    };

    xserver = {
      enable = true;
      xkb = {
        layout = "ch";
        variant = "fr";
      };

      videoDrivers = ["nvidia"];

      windowManager.i3 = {
        enable = true;
        extraPackages = with pkgs; [
          dunst
          i3lock #default i3 screen locker
          libnotify
          polybarFull
          rofi
          xborders
        ];
      };
    };
  };
}
