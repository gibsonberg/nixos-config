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
    cowsay
    fastfetch # device query util; TODO: include in fish init 
    hugo # static site generator
    iftop # network monitoring
    iotop # io monitoring
    starship # customizable prompt; see below
    yt-dlp
    # nmap # networ discover/security auditing utility

    # rust-based utils (TODO: consider making system-level install?)
    bat # cat(1) clone w/ syntax highlighting
    dust # disk usage utility
    evil-helix # feature-complete editor
    eza # modern ls replacement
    fd # modern find replacement
    ripgrep-all # ripgrep but within addl. filetypes
    wiki-tui # wikipedia tui interface

    # Fonts & Icons
    nerd-fonts.adwaita-mono
  ];

  programs = {
    # Enable fish in home-manager; also necessary in nixos system config?
    fish.enable = true;

    # Zoxide: intuitive replacement for cd
    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };
  };
}
