{ config, lib, pkgs, ... }:

{
  programs.adb.enable = true;
  users.users.pom.extraGroups = ["adbusers"];
}
