{config, pkgs, inputs,  ...}:

{
  imports = [
    ./git.nix
    ./chromium.nix
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
    pkgs.flameshot
    pkgs.signal-desktop
    pkgs.vscodium
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;

}
