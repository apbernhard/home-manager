{ pkgs, config, lib, ... }:
with lib;
{

  programs.zsh = {

    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "ls --color=tty";
      l = "ls -CFh";
      la = "ls -Ah";
      ll = "ls -lh";
      lt = "ls -lct --reverse";
      less = "less -S";
      top = "htop";
      version = "date '+%Y%m%d%H%M%S'";
      vclip = "xclip -selection clipboard";
      df = "df -h";
      timestamp = "date +%Y%m%d%H%M%S";
      nix-show-garbadge-roots = "ls -lh /nix/var/nix/gcroots/auto/";
      cat="bat";
      grep="grep --color=auto";
      ip="ip -c";
      pacman="sudo pacman";
      mount="sudo mount";
      umount="sudo umount";
      q="exit";
      rr="rm -R";
      sp="nmcli device wifi show-password";
      tt="taskwarrior-tui";
      docking="xrandr --output eDP-1 --off --output DP-1-2 --auto";
      tw="taskwarrior-tui";
    };
  };
  programs.mcfly = {
    enable = true;
    enableLightTheme = true;
    keyScheme = "vim";
    settings = {
      colors = {
        menubar = {
          bg = "black";
          fg = "white"; 
        }; 
        lightmode = {
          prompt = "cyan";
          timing = "yellow";
          results_selection_fg = "cyan";
          results_selection_bg = "black";
          results_selection_hl = "red";

        };
      }; 
    };

  };
  
}
