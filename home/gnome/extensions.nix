{ config, pkgs, ... }:

{
  ##########################################
  #                                        #
  # Install and configure GNOME Extensions #
  #                                        #
  ##########################################

  # Install extension packages
  home.packages = with pkgs; [
    gnomeExtensions.blur-my-shell
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.lock-keys
    gnomeExtensions.dash-to-dock
    gnomeExtensions.solaar-extension
  ];

  dconf.settings = {
    "org/gnome/shell" = {
      # Enable Extensions
      disable-user-extensions = false;
      enabled-extensions = with pkgs.gnomeExtensions; [
        blur-my-shell.extensionUuid
	clipboard-indicator.extensionUuid
	lock-keys.extensionUuid
	dash-to-dock.extensionUuid
      ];
    };
    
    # Configure extensions
    "org/gnome/shell/extensions/lockkeys" = {
      style = "show-hide";
    };
    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      blur = false;
    };
    "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
    blur = false;
    };
    "org/gnome/shell/extensions/dash-to-dock" = {
    custom-background-color = true;
    background-color = "rgb(0,0,0)";
    click-action = "previews";
    show-mounts = false;
    }; 
  };
}
