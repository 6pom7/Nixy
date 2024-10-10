{ config, lib, pkgs, ... }:

{
    programs.kitty = {
        enable = true;     

        theme = "Aquarium Dark";

        settings = {
            background_opacity = lib.mkForce "0.8"; 
            background_blur = lib.mkForce "0";
            font_size = 15;
        };

        keybindings = {
          "ctrl+t" = "new_tab_with_cwd";
        };
    };  
}
