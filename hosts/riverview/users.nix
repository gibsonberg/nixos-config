{ config, pkgs, inputs, ... }:

{
  #############################
  #                           #
  # Riverview-specific users. #
  #                           #
  #############################
  
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.gibson = {
    isNormalUser = true;
    description = "Gibson Berg";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

}
