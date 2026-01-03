{ config, pkgs, inputs, ... }:

{
  #############################################
  #                                           #
  # Define desktop environment for riverview. #
  #                                           #
  #############################################

  # Enable the GNOME Desktop Environment.
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # Exclude unnecessary packages
  environment.gnome.excludePackages = with pkgs; [
    geary # email client
    epiphany # web browser
    totem # video player
    # gnome-help
    gnome-music
    gnome-tour
  ];

  # Replacement packages
  # NOTE: not included in programs; I consider them integral to GNOME
  # ... due to replacing critical utilities
  environment.systemPackages = with pkgs; [
    amberol # audio player replacement
    celluloid # video player replacement
    deja-dup # backup tool 
    trayscale # tailscale GTK frontend
  ];

}
