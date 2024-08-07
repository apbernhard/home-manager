{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      ms-python.python
      jnoortheen.nix-ide
      jdinhlife.gruvbox
    ];
    # userSettings = {
    #   "workbench.colorTheme" = "Gruvbox Light Hard";
    # };
  };
}