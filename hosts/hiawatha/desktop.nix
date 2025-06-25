{ config, pkgs, inputs, ... }:

{
  #############################################
  #                                           #
  # Define desktop environment for riverview. #
  #                                           #
  #############################################

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

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
    gnome-remote-desktop # allow RDP connections
    trayscale # tailscale GTK frontend
  ];

  # Necessary for remote desktop to show up in settings
  systemd.services.gnome-remote-desktop = {
    wantedBy = [ "graphical.target" ];
  };

}
