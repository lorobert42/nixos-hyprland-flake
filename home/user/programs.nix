{ inputs, pkgs, ... }:
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
    languages = {
      language = [{
        name = "nix";
        formatter = { command = "nixpkgs-fmt"; };
      }];
    };
    settings = {
      editor = {
        line-number = "relative";
        true-color = true;
        bufferline = "multiple";
        default-line-ending = "lf";
        popup-border = "all";
        cursor-shape = {
          normal = "bar";
          insert = "bar";
        };
        indent-guides = {
          render = true;
          character = "┆";
          skip-levels = 1;
        };
        soft-wrap.enable = true;
      };
      keys = {
        normal = {
          C-s = ":w";
          C-r = ":reload";
        };
        insert = {
          C-s = ["normal_mode" ":w"];
        };
      };
    };
  };

  programs.oh-my-posh = {
    enable = true;
    settings = builtins.fromJSON (builtins.unsafeDiscardStringContext (builtins.readFile ../config/oh-my-posh/config.json));
  };

  programs.rofi = {
    enable = true;
  };

  programs.zellij = {
    enable = true;
    enableFishIntegration = false;
    settings = {
      default_shell = "fish";
      default_layout = "compact";
      default_mode = "locked";
      keybinds = {
        locked = {
          "bind \"Alt f\"" = { ToggleFloatingPanes = []; };
          "bind \"Alt n\"" = { NewTab = []; };
          "bind \"Alt x\"" = { CloseTab = []; };
          "bind \"Alt l\"" = { GoToNextTab = []; };
          "bind \"Alt h\"" = { GoToPreviousTab = []; };
          "bind \"Alt +\"" = { Resize = "Increase"; };
          "bind \"Alt -\"" = { Resize = "Decrease"; };
        };
      };
    };
  };

  programs.home-manager.enable = true;
}
