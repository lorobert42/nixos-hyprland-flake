{ config, lib, pkgs, ... }:

{
  imports = [
    ./disks.nix
    ./modules 
  ];


  system.stateVersion = "24.05";
}

