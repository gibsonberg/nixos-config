{ config, pkgs, inputs, ... }:

{
  ############################################
  #                                          #
  # Shared system-level programs to install. #
  #                                          #
  ############################################

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Install packages
  environment.systemPackages = with pkgs; [
    git
    neovim
    ripgrep
    tree
    waypipe # ssh -X but for wayland
    wget
  ];

  # Set the default editor
  environment.variables.EDITOR = "nvim";

}
