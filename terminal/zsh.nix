{ pkgs, config, lib, ... }:
with lib;
{

  programs.zsh = {

    enable = true;
    defaultKeymap = lib.mkDefault "viins";
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    initExtra = ''xset r rate 200 25
      eval "$(register-python-argcomplete pipx)"'';
    shellAliases = {
      cat="bat";
      ls = "ls --color=tty";
      l = "ls -CFh";
      la = "ls -Ah";
      ll = "ls -lh";
      lt = "ls -lct --reverse";
      df = "df -h";
      grep="grep --color=auto";
      ip="ip -c";
      less = "less -S";
      mount="sudo mount";
      nix-show-garbage-roots = "ls -lh /nix/var/nix/gcroots/auto/";
      umount="sudo umount";
      pacman="sudo pacman";
      q="exit";
      rr="rm -R";
      sp="nmcli device wifi show-password";
      timestamp = "date +%Y%m%d%H%M%S";
      top = "htop";
      tt="taskwarrior-tui";
      version = "date '+%Y%m%d%H%M%S'";
      vclip = "xclip -selection clipboard";
    };

  };

  programs.oh-my-posh = {
    enable = true;                                                                                                           
    settings = builtins.fromJSON (builtins.readFile ./gruvbox.json);
    enableZshIntegration = true;  
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
