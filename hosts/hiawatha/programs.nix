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

    # Zen Browser
    # Remove with flake once nixpkgs packages this
    inputs.zen-browser.packages.${pkgs.system}.default
  ];

}
