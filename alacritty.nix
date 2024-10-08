{ pkgs, ... }:
{
  
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

}