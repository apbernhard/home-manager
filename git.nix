{ pkgs, ... }:
with pkgs;
{
    programs.git = {
    enable = true;
    userName = "Adrian Bernhard";
    userEmail = "adrianbernhard@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      };
    difftastic.enable = true;
    };


    home.packages = [
      lazygit
    ];
}
