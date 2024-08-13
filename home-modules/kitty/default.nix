{ config, lib, pkgs, ... }:

{
    programs.kitty = {
        enable = true;     

        theme = "Aquarium Dark";

        settings = {
            background_opacity = lib.mkForce 0; 
        };
    };  
}
