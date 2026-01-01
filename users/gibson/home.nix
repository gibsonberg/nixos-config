{ config, pkgs, hostname, ... }:

{

  #######################################
  #                                     #
  # Gibson's Home Manager Configuration #
  #                                     #
  #######################################

  imports = [
    ../../home/gnome
    ../../home/programs
    ../../home/starship
    ../../home/neovim
  ];

  # Home directory and username
  home.username = "gibson";
  home.homeDirectory = "/home/gibson";

  # basic configuration of git 
  programs.git = {
    enable = true;
    settings = {
      user.name = "Gibson Berg";
      user.email = "berg.gibson@gmail.com";
    };
  };

  programs = {
    bash = {
      enable = true;
      enableCompletion = true;
      # TODO add your custom bashrc here
      bashrcExtra = ''
        export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
      '';
  
      # fish set as interactive shell in nixos.nix
  
      # set some aliases, feel free to add more or remove some
      # shellAliases = {
      #   k = "kubectl";
      #   urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
      #   urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
      # };
    };
  
    fish = {
      # Set fish init; disable greeting
      interactiveShellInit = ''
        set fish_greeting
        fastfetch -c ~/nixos-config/home/fastfetch/config.jsonc -l ~/nixos-config/home/fastfetch/bear.txt --logo-type file --logo-width 29 --logo-height 14 --logo-padding 2 --logo-padding-top 2
        direnv hook fish | source
        set -g direnv_fish_mode disable_arrow
      '';
    };
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
