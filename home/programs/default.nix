{ config, pkgs, ... }:

{
  ################################################
  #                                              #
  # Packages to be installed in the user profile #
  #                                              #
  ################################################
  
  home.packages = with pkgs; [
    
    # GNOME
    # gnome-tweaks
    
    # Graphical tools
    alpaca # local LLM client
    amberol # audio player replacement
    celluloid # video player replacement
    dialect # translation
    foliate # epub reader
    gimp3 # image editor
    gnome-solanum # pomodoro timer
    obsidian # markdown editor/wiki
    onlyoffice-desktopeditors # office suite
    resources # system monitor
    # transmission_4 # torrent client
    
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
  };
}
