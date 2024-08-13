{ config, lib, pkgs, ... }:

{
  programs.nixvim = {

    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

  };
}
