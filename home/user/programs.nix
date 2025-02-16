{ pkgs, ... }:
{
  programs.bat.enable = true;
  programs.bottom.enable = true;
  programs.broot.enable = true;
  programs.eza.enable = true;
  programs.fd.enable = true;
  
  programs.firefox = {
    enable = true;
    policies = {
      DisableTelemetry = true;
      DNSOverHTTPS = {
        Enabled = true;
        Fallback = false;
      };
      ExtensionSettings = {
        "uBlock0@raymondhill.net" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/uBlock0@raymondhill.net/latest.xpi";
        };
      };
      HttpsOnlyMode = "enabled";
      OfferToSaveLogins = false;
      PromptForDownloadLocation = true;
      SearchEngines = {
        Default = "DuckDuckGo";
      };
    };
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
  };

  programs.gitui.enable = true;

  programs.helix = {
    enable = true;
    defaultEditor = true;
    extraPackages = [
      pkgs.nil
    ];
  };

  programs.oh-my-posh = {
    enable = true;
    settings = builtins.fromJSON (builtins.unsafeDiscardStringContext (builtins.readFile ../config/oh-my-posh/config.json));
  };

  # programs.rofi = {
  #   enable = true;
  # };

  programs.zellij = {
    enable = true;
    enableFishIntegration = false;
  };

  programs.home-manager.enable = true;
}
