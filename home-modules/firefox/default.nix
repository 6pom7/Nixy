{ config, lib, pkgs, inputs, ... }:

{
  programs.firefox = {
    enable = true;

    profiles.personal = {
      # My Book Marks
      bookmarks = [
        {
          name = "GitHub";
          keyword = "git";
          url = "https://github.com/";
        }
        {
          name = "YouTube";
          url = "https://www.youtube.com/";
        }
        {
          name = "NixPkgs";
          url = "https://search.nixos.org/packages";
        }
      ];

      # TODO extensions
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        bitwarden
        darkreader
        youtube-recommended-videos # Unhook
        tabliss
      ];

    };

    policies = {
      DisablePocket = true;
    };

  };
}
