# TODO LIST FOR NIXOS CONFIG

In no particular order,

- Further configure GNOME
    - Remove unnecessary & redundant software (Tour, Music, etc.)
    - Configure the following unused keys on laptop:
        - F8/Media? Activates "Super+P"
        - F10/Camera Toggle, Activates "Web Cam"
        - F12/MyAsus, Activates Launch1
    - Set default apps for file types declaratively
- Configure software
    - Configure celluloid (doesn't use dconf?)
    - Set up bashrc
    - Configure fastfetch
    - Install Steam (different from normal nixpkgs)
- Modularize nixos-config directory
    - Separate installed programs from home.nix & configuration.nix
    - Separate important system things that should be universal between hosts (enable flakes, etc.)
- Experiment with new software
    - New shell (zsh or fish?)
    - Rust-based utilities (See NoBoilerPlate video)
- Set up LUKS autologin
- Set up Plymouth
- Turn on automatic updates
- Turn on automatic garbage collection
- Set up multi-user in flake.nix?
