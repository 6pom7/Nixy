{ config, lib, pkgs, ... }:

{
  programs.foot = lib.mkForce {
    # Enable it to be edited by home-manager
    enable = true;

    settings = {
      main = {
        font = "JetBrainsMono Nerd Font Mono:size=11";
        dpi-aware =  "yes";
      };
    };
  };
}
