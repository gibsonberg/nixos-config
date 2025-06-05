{ config, pkgs, ... }:

{
  ##########################################
  #                                        #
  # Install and set up desktop icon theme. #
  #                                        #
  ##########################################

  # Install icon theme
  home.packages = with pkgs; [
    papirus-icon-theme
  ];

  # Activate icon theme in GNOME
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      icon-theme = "Papirus-Dark";
    };
  };

}
