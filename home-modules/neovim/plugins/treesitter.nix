{ config, lib, pkgs, ... }:

{
  programs.nixvim.plugins.treesitter = {
    enable = true;

    settings = {
      auto_install = true;
      ensure_installed = [
        "javascript"
        "typescript"
        "dart"
        "c"
        "nix"
      ];

      highlight.enable = true;

    };

  };
}
