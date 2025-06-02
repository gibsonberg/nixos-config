{ config, pkgs, ... }:

{

  #######################################
  #                                     #
  # Gibson's Home Manager Configuration #
  #                                     #
  #######################################

  imports = [
    ../../home/gnome
    ../../home/programs
  ];

  # Home directory and username
  home.username = "gibson";
  home.homeDirectory = "/home/gibson";

  # basic configuration of git 
  programs.git = {
    enable = true;
    userName = "Gibson Berg";
    userEmail = "berg.gibson@gmail.com";
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    # TODO add your custom bashrc here
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    '';

   # set some aliases, feel free to add more or remove some
   # shellAliases = {
   #   k = "kubectl";
   #   urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
   #   urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
   # };
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
