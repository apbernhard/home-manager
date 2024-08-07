{config, pkgs, inputs,  ...}:

{
  imports = [
    ./programs
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
    pkgs.btop
    pkgs.feh
    pkgs.imagemagick
    pkgs.okular
    pkgs.zathura
    pkgs.bitwarden
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;

}
