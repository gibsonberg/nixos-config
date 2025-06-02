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
    fastfetch # device query util; TODO: include in bashrc
    iftop # network monitoring
    iotop # io monitoring
    yt-dlp
    # ripgrep # recursively searches directories for a regex pattern
    # nmap # networ discover/security auditing utility
    
    hugo # static site generator
    
    cowsay
  ];
  
 # starship - an customizable prompt for any shell
 # programs.starship = {
 #   enable = true;
 #   # custom settings
 #   settings = {
 #     add_newline = false;
 #     aws.disabled = true;
 #     gcloud.disabled = true;
 #     line_break.disabled = true;
 #   };
 # };
}
