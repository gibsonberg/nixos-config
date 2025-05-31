{ config, pkgs, ... }:

{
  # Home directory and username
  home.username = "gibson";
  home.homeDirectory = "/home/gibson";

  # TODO: separate out GNOME config into separate file
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

    # Enable extensions
    "org/gnome/shell" = {
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
  };

  # Packages that should be installed to the user profile.
  # TODO: Separate out into separate file, break down by host?
  home.packages = with pkgs; [

    # GNOME
    gnomeExtensions.blur-my-shell
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.lock-keys
    gnomeExtensions.dash-to-dock
    # gnome-tweaks

    # Graphical Tools
    alpaca
    amberol
    celluloid
    dialect
    gimp3
    obsidian
    onlyoffice-desktopeditors
    resources


    # Command Line Tools
    fastfetch
    btop # htop replacement
    iotop # io monitoring
    iftop # network monitoring
   # ripgrep # recursively searches directories for a regex pattern
   # nmap # A utility for network discovery and security auditing

    # Productivity
    hugo # static site generator

    # misc
    cowsay

  ];

  # basic configuration of git 
  programs.git = {
    enable = true;
    userName = "Gibson Berg";
    userEmail = "berg.gibson@gmail.com";
  };

  # starship - an customizable prompt for any shell
#  programs.starship = {
#    enable = true;
#    # custom settings
#    settings = {
#      add_newline = false;
#      aws.disabled = true;
#      gcloud.disabled = true;
#      line_break.disabled = true;
#    };
#  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    # TODO add your custom bashrc here
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    '';

    # set some aliases, feel free to add more or remove some
#    shellAliases = {
#      k = "kubectl";
#      urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
#      urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
#    };
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";
}
