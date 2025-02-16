{ config, pkgs, ... }:

{
  users.users.lrobert = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "qemu"
      "kvm"
      "libvirtd"
      "networkmanager"
    ];
    initialHashedPassword = "$y$j9T$qS31BGb/jJXHyVewWsX6x/$o1KHdJOQkdGzbpj.PW1ao7moQ9C25iRyET0lFO1JqA1";
  };

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ4Fc7Gvud8vF/pCyBCa1JBKNX+NYpFy9UwJpjb2cbEj user@PC-Loic"
  ];
}
