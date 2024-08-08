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
    };

  };
}