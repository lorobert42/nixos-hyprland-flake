{ pkgs, ... }:

{
  home.packages = [
    # Dev stuff
    pkgs.gcc
    pkgs.lua
    pkgs.nodejs_22
    pkgs.nodePackages.pnpm
    (pkgs.python3.withPackages (python-pkgs: [
        python-pkgs.pip
        python-pkgs.requests
    ]))
    pkgs.rustup
    
    # Work stuff
    pkgs.libreoffice-qt
    pkgs.hunspell
 
    # Bluetooth
    pkgs.blueberry

    # Gaming
    pkgs.steam
    pkgs.steam-run
    (pkgs.lutris.override {
      extraPkgs = pkgs: [
        pkgs.wineWowPackages.stable
        pkgs.winetricks
      ];
    })
    pkgs.bottles

    # Downloads
    pkgs.transmission_4-qt

    # Utils
    pkgs.feh
    pkgs.viewnior
    # pkgs.catppuccin-cursors.macchiatoBlue
    # pkgs.catppuccin-gtk
    pkgs.picom
    pkgs.papirus-folders
    pkgs.networkmanagerapplet
    pkgs.brightnessctl
  ];
}
