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
    - Install Steam (different from normal nixpkgs)
- Modularize nixos-config directory
- Experiment with new software
    - New shell (zsh or fish?)
    - Rust-based utilities (See NoBoilerPlate video)
- Set up LUKS autologin
- Set up Plymouth
- Turn on automatic updates
- Turn on automatic garbage collection
- Prep config for multi-host & multi user
    - Need to set up so that it will pick the correct host
        - I believe this just requires an entry in flake.nix for the new hostname
          see: ryan4yin nixos-config
