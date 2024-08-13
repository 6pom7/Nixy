{ config, lib, pkgs, ... }:

{
  programs.chromium = {

    enable = true;

    extensions = [
      # uBlock Orgin
      { id = "epcnnfbjfcgphgdmggkamkmgojdagdnn"; }

      # Bitwarden
      { id = "nngceckbapebfimnlniiiahkandclblb"; }

      # Dark Reader
      { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; }

      # Tabliss
      { id = "hipekcciheckooncpjeljhnekcoolahp"; }

      # Unhook
      { id = "khncfooichmfjbepaaaebmommgaepoid"; }
    ];
  };
}
