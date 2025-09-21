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

    # Camera mounting utilities
    libgphoto2
    gphoto2
    gphoto2fs
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

  # Solaar
  hardware.logitech.wireless.enable = true; # Necessary for solaar
  # Set Solaar to automatically launch on startup -- apply dpi settings
  # shitty version of this https://github.com/nix-community/home-manager/issues/3447#issuecomment-1328294558
  environment.etc."xdg/autostart/solaar.desktop".source = (pkgs.solaar + "/share/applications/solaar.desktop");

  # Gphoto2 for mounting camera file system
  programs.gphoto2.enable = true;

}
