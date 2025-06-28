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
    gnome-boxes # simple VM
    
    # Graphical tools
    calibre # e-book software suite
    dialect # translation
    foliate # epub reader
    gimp3 # image editor
    gnome-solanum # pomodoro timer
    inkscape # vector graphics editor
    obsidian # markdown editor/wiki
    onlyoffice-desktopeditors # office suite
    remmina # RDP client
    resources # system monitor
    # transmission_4 # torrent client, for some reason not working?
    
    # Command-line tools
    btop # htop replacement
    eza # modern ls replacement
    fastfetch # device query util; TODO: include in fish init 
    iftop # network monitoring
    iotop # io monitoring
    starship # customizable prompt; see below
    yt-dlp
    # ripgrep # recursively searches directories for a regex pattern
    # nmap # networ discover/security auditing utility
    
    hugo # static site generator
    
    cowsay

    # Fonts & Icons
    nerd-fonts.adwaita-mono
  ];

  programs = {
    # Enable fish in home-manager; also necessary in nixos system config?
    fish.enable = true;

    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };
  };
}
