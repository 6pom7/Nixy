{ config, lib, pkgs, ... }:

{
  gtk = {
    enable = true;

    # Setting the icon theme
    iconTheme = {
      name = "Nordzy";
      package = pkgs.nordzy-icon-theme;
    };
  };

  qt = {
    enable = true;
  };

}
