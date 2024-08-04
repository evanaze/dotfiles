{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
        url = "github:nix-community/nixvim/nixos-23.11";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, nixvim, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
	config.allowUnfree = true;
      };
    in {
	    nixosConfigurations = {
	      nixos = nixpkgs.lib.nixosSystem {
		inherit system;
		modules = [
		  ./configuration.nix

		  home-manager.nixosModules.home-manager
		  {
		    home-manager.useGlobalPkgs = true;
		    home-manager.useUserPackages = true;
		    home-manager.extraSpecialArgs = {inherit inputs;};
		    home-manager.users.evanaze = import ./home.nix;
		  }
		];
	      };
	    };
	  };
}
