{ config, lib, pkgs, ... }:

{
  programs.nixvim.plugins.alpha = {
    enable = true;
    iconsEnabled = true;
    theme = "dashboard";

  };
}
