{ config, lib, pkgs, ... }:

{
    imports = [
        ./alpha.nix
        ./telescope.nix
        ./treesitter.nix
        ./harpoon.nix
        ./lsp.nix
        ./autoclose.nix
    ];

    programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
        flutter-tools-nvim
    ];
}
