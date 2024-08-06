{config, pkgs, inputs,  ...}:

{
  imports = [
    ./git.nix
    ./chromium.nix
    ./vscodium.nix
  ];

  home.username = "dertrudi";
  home.homeDirectory = "/home/dertrudi";

  home.stateVersion = "24.05"; # Please read the comment before changing.

  programs.htop = {
    enable = true;
    settings.highlight_base_name = true;
    settings.tree_view = true;
  };


  home.packages = [
    pkgs.bat
    pkgs.nemo
    pkgs.gimp
    pkgs.signal-desktop
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
  
  services.flameshot = {
    enable = true;
    settings = {
      General = {
        disabledTrayIcon = true;
        showStartupLaunchMessage = true;
        checkForUpdates=false;
        contrastOpacity=188;
        drawColor="#ee82ee";
        savePath="/home/dertrudi/Downloads";
        showHelp=false;
      };
    };
  };
}
