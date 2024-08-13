{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Nix user repository
    nur.url = "github:nix-community/nur";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # For neovim
    nixvim = {
      url = "github:nix-community/nixvim";
      # If using a stable channel you can use `url = "github:nix-community/nixvim/nixos-<version>"`
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";

    # Does not work, plz fix
    split-monitor-workspaces = {
      url = "github:Duckonaut/split-monitor-workspaces";
      inputs.hyprland.follows = "hyprland"; # <- make sure this line is present for the plugin to work as intended
    };

    # Coloring
    stylix.url = "github:danth/stylix";
  };

  outputs =
    { self, nixpkgs, home-manager, nixvim, ... }@inputs:
    {
      nixosConfigurations.default = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        # Allows modules to use inputs
        specialArgs = {
          inherit inputs;
        };

        modules = [
          ./configuration.nix
          inputs.stylix.nixosModules.stylix
        ];
      };

      # Home config??
      homeConfigurations = {
        mee = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = {
            inherit nixvim;
          };

          modules = [
            ./home.nix
          ];
        };
      };

    };
}
