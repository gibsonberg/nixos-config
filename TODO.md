# TODO LIST FOR NIXOS CONFIG

In no particular order,

- Further configure GNOME
    - Configure the following unused keys on laptop:
        - F8/Media? Activates "Super+P"
        - F10/Camera Toggle, Activates "Web Cam"
    - Set default apps for file types declaratively
    - Adjust wallpaper dir
- Configure software
    - Configure celluloid (doesn't use dconf?)
    - Configure fastfetch & add to fish init
    - Make Steam use GNOME cursors
- Modularize nixos-config directory
    - Separate installed programs from main system config?
        - probably good to also move GNOME excludes
    - Separate important system things that should be universal between hosts (enable flakes, etc.)
    - Have user subdirectories for home/system to allow user-specific settings that don't necessarily need to be applied to all users?
- Experiment with new software
    - Rust-based utilities (See NoBoilerPlate video)
- Set up multi-user in flake.nix?
- Revisit Autologin:
    - It seems to WORK out of the box with LUKS: password is transferred to keyring
    - HOWEVER, it seems to cause GNOME to crash soon after boot when paired w/ initrd, plymouth
