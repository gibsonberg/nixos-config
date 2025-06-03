{ config, pkgs, ... }:

{
  imports = [
    ./extensions.nix
  ];

  dconf.settings = {
    # Set dark mode
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };

    # Set wallpaper
    # TODO: have this inherit user's name from flake.nix or something
    # ... & use to define preferred wallpaper by user
    # ... i.e. file:///home/{user}/nixos-config/wallpaper.jpg
    # ... or find a better location for this (like in each user's
    # ... home directory within this config subdirectory).
    # ... Maybe "/home/gibson/nixos-config/users/{username}/wallpaper.jpg"!!
    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-uri = "file:///home/gibson/nixos-config/wallpaper.jpg";
      picture-uri-dark = "file:///home/gibson/nixos-config/wallpaper.jpg";
    };

    "org/gnome/shell" = {
      # Set apps pinned to dash
      favorite-apps = [
        "zen.desktop"
	"org.gnome.Nautilus.desktop"
	"net.nokyan.Resources.desktop"
      ];
    };

    # Additional Settings
    # Sorted alphabetically by dconf path
    "org/gnome/desktop/datetime" = {
      automatic-timezone = true;
    };
    "org/gnome/desktop/interface" = {
      clock-format = "12h";
      show-battery-percentage = true;
    };
    "org/gnome/system/location" = {
      enabled = true;
    };
    "org/gnome/desktop/wm/preferences" = {
      focus-mode = "sloppy";
    };
    "org/gtk/settings/file-chooser" = {
      clock-format = "12h"; # also performed when setting gnome interface to 12h
    };

    # Keybindings
    ## Shell
    "org/gnome/shell/keybindings" = {
      screenshot = [ "Print" ];
      show-screenshot-ui = [ "<Shift><Super>s" ];
    };
    ## Custom
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      name = "Launch Terminal";
      binding = "<Super>t";
      command = "kgx";
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      name = "Launch Resources";
      binding = "Launch1";
      command = "resources";
    };
    ### Makes custom keybinds show up in settings
    ### Makes custom keybinds show up in settings
    ### It looks like they work without it, but they don't show
    "org/gnome/settings-daemon/plugins/media-keys".custom-keybindings = [
      "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
      "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
    ];

    # Configure Gnome Apps
    "org/gnome/TextEditor" = {
      highlight-current-line = true;
      restore-session = false;
      keybindings = "vim";
    };
    "io/bassi/Amberol" = {
      background-play = false;
    };
  };
}
