{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Packages to be installed to the user profile
    
    # GNOME
    # gnome-tweaks
    
    # Graphical tools
    alpaca
    amberol
    celluloid
    dialect
    gimp3
    obsidian
    onlyoffice-desktopeditors
    resources
    
    # Command-line tools
    btop # htop replacement
    fastfetch # device query util; TODO: include in fish init 
    iftop # network monitoring
    iotop # io monitoring
    starship # customizable prompt; see below
    yt-dlp
    # ripgrep # recursively searches directories for a regex pattern
    # nmap # networ discover/security auditing utility
    
    hugo # static site generator
    
    cowsay

    # Fonts
    nerd-fonts.adwaita-mono
  ];

  programs = {
    # Enable fish in home-manager; also necessary in nixos system config?
    fish.enable = true;
  
 # starship - an customizable prompt for any shell
    starship = {
      enable = true;
      settings = pkgs.lib.importTOML ./gnome.toml;
      # Basic single line config
#       settings = {
#         add_newline = false;
#         aws.disabled = true;
#         gcloud.disabled = true;
#         line_break.disabled = true;
#       };
    };
  };
}
