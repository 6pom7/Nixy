{ config, lib, pkgs, ... }:

{
  programs.nixvim.plugins.lsp = {
    enable = true;

    servers = {
      dartls.enable = true;
      nil-ls.enable = true;
    };
  };
}
