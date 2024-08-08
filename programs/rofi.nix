{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    cycle = true;
    plugins = [ pkgs.rofi-calc pkgs.rofi-emoji ];
    extraConfig = {
    modi = "window,drun,run,emoji,calc,combi";
    show-icons = true;
    terminal = "kitty"; 
    kb-row-up = "Up,Control+k,Shift+Tab";
    kb-row-down = "Down,Control+j";
    kb-accept-entry = "Control+m,Return";
    kb-remove-to-eol = "Control+Shift+e";
    };
  };
}
