# TODO LIST FOR NIXOS CONFIG

In no particular order,

- Further configure GNOME
    - Remove unnecessary & redundant software (Tour, Music, etc.)
    - Configure the following unused keys on laptop:
        - F8/Media? Activates "Super+P"
        - F10/Camera Toggle, Activates "Web Cam"
        - F12/MyAsus, Activates Launch1
    - Set default apps for file types declaratively
    - Adjust wallpaper dir
- Configure software
    - Configure celluloid (doesn't use dconf?)
    - Set up bashrc
    - Configure fastfetch
    - Install Steam (different from normal nixpkgs)
    - Configure Obsidian? Can this be done declaratively via home-manager?
        - Set plugins:
            - nvim bindings?
            - GNOME theme
            - Advanced Tables or whatever else is necessary for my DND archive
- Modularize nixos-config directory
    - Separate installed programs from main system config?
    - Separate important system things that should be universal between hosts (enable flakes, etc.)
- Experiment with new software
    - New shell (zsh or fish?)
    - Rust-based utilities (See NoBoilerPlate video)
- Set up LUKS autologin
- Set up Plymouth
- Turn on automatic updates
- Set up multi-user in flake.nix?
