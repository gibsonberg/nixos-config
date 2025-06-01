{ config, pkgs, ... }:

{

  imports = [
    ./home/gnome
  ];

  # Home directory and username
  home.username = "gibson";
  home.homeDirectory = "/home/gibson";

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
