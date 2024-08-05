{pkgs, ...}:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "dertrudi";
  home.homeDirectory = "/home/dertrudi";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    pkgs.chromium 
    pkgs.nemo
    pkgs.gimp
    pkgs.git

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/dertrudi/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  programs.alacritty = {
    enable = true;
    settings = {
    	font.size = 8;
        font.normal = {
            family = "FiraCode Nerd Font";
            style = "Regular";
        };
        colors = {
            bright = {
                black = "0x928374";
                blue = "0x076678";
                cyan = "0x427b58";
                green = "0x79740e";
                magenta = "0x8f3f71";
                red = "0x9d0006";
                white = "0x3c3836";
                yellow = "0xb57614";
            };
            normal = {
                black = "0xfbf1c7";
                blue = "0x458588";
                cyan = "0x689d6a";
                green = "0x98971a";
                magenta = "0xb16286";
                red = "0xcc241d";
                white = "0x7c6f64";
                yellow = "0xd79921";
            }; 
           primary = {
                background = "0xf2e5bc";
                foreground = "0x000000";
           };  
        };
    };
  };

  programs.git = {
    enable = true;
    userName = "Adrian Bernhard";
    userEmail = "adrianbernhard@gmail.com";
    extraConfig = {
        init.defaultBranch = "main";
    };
  };

}
