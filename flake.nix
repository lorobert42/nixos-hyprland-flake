{
  description = "lrobert NixOS";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # disko
    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # facter
    nixos-facter-modules.url = "github:numtide/nixos-facter-modules";
  };

  outputs = { nixpkgs, home-manager, disko, nixos-facter-modules, ... }@inputs:
  {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        disko.nixosModules.disko
        ./system/configuration.nix
        nixos-facter-modules.nixosModules.facter
        {
          config.facter.reportPath =
            if builtins.pathExists ./facter.json then
              ./facter.json
            else
              throw "Have you forgotten to run nixos-anywhere with `--generate-hardware-config nixos-facter ./facter.json`?";
        }
        home-manager.nixosModules.home-manager
        {
          home-manager.users.lrobert = {
            imports = [
              ./home/default.nix
            ];
          };
          home-manager.backupFileExtension = "backup";
          home-manager.extraSpecialArgs = { inherit inputs; };
        }
      ];
    };
  };
}
