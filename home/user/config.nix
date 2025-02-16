{ config, ... }:

let configDir = ../config;
in
{
  home.file = {
    ".config/alacritty".source = config.lib.file.mkOutOfStoreSymlink "${configDir}/alacritty";
  };
}
