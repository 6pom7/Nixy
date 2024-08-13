{ config, lib, pkgs, ... }:

{
  programs.nixvim.plugins.telescope = {
    enable = true;

    keymaps = {
      # Find files
      "<leader>pf" = {
        action = "find_files";
        options = {
          desc = "telescope find files";
        };
      };
      # Grep search
      "<leader>ps" = "live_grep";

    };

  };
}
