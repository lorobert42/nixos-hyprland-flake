
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
    bat
    brightnessctl
    (catppuccin-sddm.override {
      flavor = "mocha";
    })
    du-dust
    eza
    fzf
    git
    gnumake
    openssl
    openssl.dev
    pkg-config
    ripgrep
    unzip
    wget
    xfce.thunar
    xdg-desktop-portal-gtk
    xorg.libXmu
    zip
    zoxide
  ];
}

