# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  #################################
  #                               #
  # Riverview host configuration. #
  #                               #
  #################################

  imports =
    [ # Include the results of the hardware scan.
      ../system # items shared across all hosts

      ./programs.nix
      ./users.nix
      ./desktop.nix # define desktop environment

      ./hardware-configuration.nix
      ../../users/gibson/nixos.nix # can this be made user-agnostic
    ];

  # Boot #######################################################################

  # Automount partitions
  fileSystems."/mnt/media" =
    { device = "/dev/disk/by-uuid/d76e7fbe-c943-4950-ab07-58148f80c350";
      fsType = "ext4";
  };
  fileSystems."/mnt/backup" =
    { device = "/dev/disk/by-uuid/9000996e-54e8-48a2-8f2f-809ff1b3d181";
      fsType = "ext4";
  };
  fileSystems."/mnt/games" =
    { device = "/dev/disk/by-uuid/2c6546cd-dc74-479a-ac8b-d73b5293cb63";
      fsType = "ext4";
  };

  # Networking #################################################################

  # Enable networking
  networking.networkmanager.enable = true;

  # Define hostname.
  networking.hostName = "hiawatha";

  # Required to fix tailscale exit node not having internet access.
  networking.firewall.checkReversePath = "loose";

  # Services ###################################################################

  # TODO: check which of these are only required for GNOME and consider moving
  # ... them over to desktop.nix?

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Configure keymap in X11
  # TODO: make this system-wide?
  services.xserver.xkb = {
    layout = "us,es";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  services.tailscale.enable = true; # tailscale VPN

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Nix environment ############################################################

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

}
