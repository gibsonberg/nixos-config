{
  description = "NixOS configuration of Gibson Berg";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    # home-manager, used for managing user configuration
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # Zen Browser Flake until nixpkgs adds it
    # Replace and garbage-collect eventually
    zen-browser.url = "github:youwen5/zen-browser-flake";
  };

  outputs =
    inputs@{ nixpkgs, home-manager, ... }:
    {
      nixosConfigurations = {
        # The host with hostname 'riverview' will use this configuration.
	# TODO: prep for multi-host if want to continue on 'hiawatha'
	riverview = let 
          hostname = "riverview"; # define hostname
	  specialArgs = {inherit hostname;}; # for some reason necessary to inherit hostname?
	in
	nixpkgs.lib.nixosSystem {
	  inherit specialArgs;
          system = "x86_64-linux";
	  # specialArgs = { inherit inputs; };
          modules = [
            ./hosts/riverview 
	    { _module.args = { inherit inputs; };} # using this instead of specialArgs due to
	    # ... inheritance issue commented on above.
            
            # make home-manager as a module of nixos
	    # so that home-manager configuration will
	    # be deployed automatically when executing
	    # 'nixos-rebuild-switch'
	    home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              # TODO: set up flake to alllow for multiple users?
	      home-manager.users.gibson = import ./users/gibson/home.nix;
	      home-manager.extraSpecialArgs = specialArgs; # pass hostname along to home-manager

              # Optionally, use home-manager.extraSpecialArgs to pass
              # arguments to home.nix
            }
          ];
        };
      };
    };
}
