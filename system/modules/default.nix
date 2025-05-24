{ ... }: 

{
  imports = [
    ./boot.nix
    ./fonts.nix
    ./gaming.nix
    ./hardware.nix
    # ./hyprland.nix
    ./plasma.nix
    ./internationalisation.nix
    ./misc.nix
    ./networking.nix
    ./nixsettings.nix
    ./packages.nix
    ./polkit.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./sound.nix
  	./systemd.nix
    ./time.nix
    ./theme.nix
    ./users.nix
    ./virtualisation.nix
  ];
}
