{ config, pkgs, ... }:

{
  services = {
    dbus.enable = true;
    # picom.enable = true;
    openssh.enable = true;
    spice-vdagentd.enable = true;

    displayManager = {
      sddm.enable = true;
      sddm.package = pkgs.kdePackages.sddm;
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
          i3lock #default i3 screen locker
          polybarFull
          xborders
        ];
      };
    };
  };
}
