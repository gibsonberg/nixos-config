{ config, pkgs, inputs, ... }:

{
  #############################################################
  #                                                           #
  # Riverview-specific system-level programs to be installed. #
  #                                                           #
  #############################################################

  # Install firefox.
  programs.firefox.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wl-clipboard

    alpaca # local LLM client
    solaar # Logitech unifying receiver client

    # Zen Browser
    # Remove with flake once nixpkgs packages this
    inputs.zen-browser.packages.${pkgs.system}.default
  ];

  # Hiawatha-specific package overrides
  nixpkgs.config.packageOverrides = pkgs: {
    # Set up ROCM for ollama
    alpaca = pkgs.alpaca.override { ollama = pkgs.ollama-rocm; };
  };

  hardware.logitech.wireless.enable = true; # Necessary for solaar
}
