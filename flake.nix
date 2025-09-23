{
  description = "Home Manager configuration of otis";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {

    homeManagerModules = {
      home = ./home.nix;
    };

    homeConfigurations.otis = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-darwin;
      extraSpecialArgs = { agenix = inputs.agenix; };
      modules = [
        inputs.agenix.homeManagerModules.default
        ./mac.nix
      ];
    };

  };

}
