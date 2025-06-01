{ config, pkgs, ... }:

{
  dconf.settings = {
    # Set dark mode
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };

    # Set wallpaper
    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      # TODO: swap out wallpaper for non-test image, move to nix-config dir
      picture-uri = "file:///home/gibson/nixos-config/wallpaper.jpg";
      picture-uri-dark = "file:///home/gibson/nixos-config/wallpaper.jpg";
    };

    "org/gnome/shell" = {
      # Enable Extensions
      disable-user-extensions = false;
      enabled-extensions = with pkgs.gnomeExtensions; [
        blur-my-shell.extensionUuid
	clipboard-indicator.extensionUuid
	lock-keys.extensionUuid
	dash-to-dock.extensionUuid
      ];
      
      # Set apps pinned to dash
      favorite-apps = [
        "zen.desktop"
	"org.gnome.Nautilus.desktop"
	"net.nokyan.Resources.desktop"
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
    ### Makes custom keybinds show up in settings
    ### It looks like they work without it, but they don't show
    "org/gnome/settings-daemon/plugins/media-keys".custom-keybindings = [
      "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
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
