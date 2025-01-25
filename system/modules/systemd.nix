{ config, pkgs, ... }:

{
  systemd.network.wait-online.enable = false;
}
