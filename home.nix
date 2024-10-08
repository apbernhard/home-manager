{config, pkgs, inputs,  ...}:

{
  imports = [
    ./programs
    ./terminal
    ./stylix.nix
    ./vim.nix
  ];

  home.username = "dertrudi";
  home.homeDirectory = "/home/dertrudi";

  home.stateVersion = "24.05";

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
    pkgs.treefmt
    pkgs.meslo-lgs-nf

    # Graphics
    pkgs.gimp
    pkgs.imagemagick

    # Communication
   # pkgs.signal-desktop
    pkgs.element-desktop

    pkgs.bitwarden
    pkgs.zotero
    pkgs.zoom
    pkgs.cherrytree

    # privacy
    pkgs.tor
    pkgs.tor-browser
    # Drivers
    pkgs.brlaser

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
    
    # Music
    pkgs.spotify
    
    # PDF
    pkgs.okular
    pkgs.zathura
  ];

  home.file = {

  };

  home.sessionVariables = {
    EDITOR = "vim";
    SSH_AUTH_SOCK = "$XDG_RUNTIME_DIR/ssh-agent.socket";
  };

  programs.home-manager.enable = true;

}
