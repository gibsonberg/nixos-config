{ config, pkgs, inputs, ... }:

{
  ############################################
  #                                          #
  # Remove unnecessary GNOME packages.       #
  # Replacements are noted where applicable. #
  #                                          #
  ############################################

  environment.gnome.excludePackages = with pkgs; [
    geary # email client
    epiphany # web browser
    totem # video player
    # gnome-help
    gnome-music
    gnome-tour
  ];
}
