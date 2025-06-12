{config, pkgs, ... }:

{
  ########################
  #                      #
  # Neovim configuration #
  #                      #
  ########################

  programs.neovim = {
    enable = true;
    extraConfig = ''
      set number relativenumber
    '';
    plugins = [
      pkgs.vimPlugins.plenary-nvim
      pkgs.vimPlugins.telescope-nvim
    ];
  };
}
