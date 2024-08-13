{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "pom";
    userEmail = "singh94564@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
