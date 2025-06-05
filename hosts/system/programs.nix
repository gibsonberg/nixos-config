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
    wget
  ];

  # Set the default editor
  environment.variables.EDITOR = "nvim";

}
