{ config, lib, pkgs, ... }:

{
  imports = [
    ./plugins
    ./keybindings.nix
    ./completions.nix
  ];

  programs.nixvim = {
    enable = true;

    colorschemes.onedark.enable = true;

    opts = {
      nu = true;
      relativenumber = true;

      tabstop = 4;
      softtabstop = 4;
      shiftwidth = 4;
      expandtab = true;

      smartindent = true;

      wrap = false;

      hlsearch = false;
      incsearch = true;

      termguicolors = true;

      scrolloff = 8;
      signcolumn = "yes";

      updatetime = 50;

      # colorcolumn = "80";
    };

    plugins = {
        airline = {
          enable = true;
          settings.theme = "dark";
        };
    };

    # Files added
    files = {

      "ftplugin/nix.lua" = {
        opts = {
          expandtab = true;
          shiftwidth = 2;
          tabstop = 2;
        };
      }; 

      "ftplugin/dart.lua" = {
        opts = {
          expandtab = true;
          shiftwidth = 2;
          tabstop = 2;
        };
      }; 

    };


  };
}
