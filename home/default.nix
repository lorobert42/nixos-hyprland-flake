{ config, pkgs, lib, inputs, ... }:

{
  imports = [
    ./user
  ];
  
  home.username = "lrobert";
  home.homeDirectory = "/home/lrobert";
  home.stateVersion = "24.05";
}

