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

    solaar # Logitech unifying receiver client

    # Zen Browser
    # Remove with flake once nixpkgs packages this
    inputs.zen-browser.packages.${pkgs.system}.default
  ];

  hardware.logitech.wireless.enable = true; # Necessary for solaar
}
