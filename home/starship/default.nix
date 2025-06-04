{ config, pkgs, ... }:

{
  ###########################
  #                         #
  # Starship configuration. #
  #                         #
  ###########################
  
  # starship - an customizable prompt for any shell
  programs.starship = {
    enable = true;
    settings = pkgs.lib.importTOML ./gnome.toml;
    # Basic single line config
    # settings = {
    #   add_newline = false;
    #   aws.disabled = true;
    #   gcloud.disabled = true;
    #   line_break.disabled = true;
    # };
  };
}

