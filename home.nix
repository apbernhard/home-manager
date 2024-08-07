{config, pkgs, inputs,  ...}:

{
  imports = [
    ./programs
    ./git.nix
    ./stylix.nix
    ./vim.nix
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

    # Utils
    pkgs.bat
    pkgs.btop
    pkgs.feh
    pkgs.nemo

    # Graphics
    pkgs.gimp
    pkgs.imagemagick

    # Communication
    pkgs.signal-desktop
    pkgs.bitwarden
    
    # Office tools
    pkgs.libreoffice
    pkgs.hunspell
    pkgs.hunspellDicts.de-de
    pkgs.hunspellDicts.en-us
    pkgs.hyphen
    pkgs.aspell
    pkgs.aspellDicts.de
    pkgs.aspellDicts.en
    pkgs.aspellDicts.es
    
    # PDF
    pkgs.okular
    pkgs.zathura
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };

  programs.home-manager.enable = true;

}
