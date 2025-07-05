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

    # alpaca # local LLM client
    solaar # Logitech unifying receiver client

    # Zen Browser
    # Remove with flake once nixpkgs packages this
    inputs.zen-browser.packages.${pkgs.system}.default
  ];

  ### Temporarily(?) replacing Alpaca with straight Ollama --
  ### The current Alpaca version in 25.05 seems to not have functioning ROCM
  ### + doesn't "ollama stop" models upon closing for dedicated Ollama instances.
  # # Hiawatha-specific package overrides
  # nixpkgs.config.packageOverrides = pkgs: {
  #   # Set up ROCM for ollama
  #   alpaca = pkgs.alpaca.override { ollama = pkgs.ollama-rocm; };
  # };

  # Ollama: local LLM enabled as systemd service. Access with "ollama"
  services.ollama = {
    enable = true;
    acceleration = "rocm";
  };

  hardware.logitech.wireless.enable = true; # Necessary for solaar

}
