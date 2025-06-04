# TODO LIST FOR NIXOS CONFIG

In no particular order,

- Further configure GNOME
    - Set default apps for file types declaratively
    - Adjust wallpaper dir
- Configure software
    - Configure celluloid (doesn't use dconf?)
    - Configure fastfetch & add to fish init
    - Make Steam use GNOME cursors
    - Configure Neovim
        - Plugins?
            - telescope?
            - better nix highlighting?
            - nvim-cmp?
        - Should nvim configuration actually be system-wide since install is system-wide?
- Modularize nixos-config directory
    - Modularize host mainfile
        - Separate installed programs from main system config?
            - probably good to also move GNOME excludes
        - Separate important system things that should be universal between hosts (enable flakes, etc.)
    - Have user subdirectories for home/system to allow user-specific settings that don't necessarily need to be applied to all users?
- Experiment with new software
    - Rust-based utilities (See NoBoilerPlate video)
        - uutils coreutils?
        - fd?
        - bat?
        - eza/
        - zoxide? 
        - gitui?
        - du-dust?
        - evil-helix?
        - ncspot -- is there a youtube equivalent?
        - ripgrep-all ?
        - wiki-tui?
        - presenterm?
- Revisit Autologin:
    - It seems to WORK out of the box with LUKS: password is transferred to keyring
    - HOWEVER, it seems to cause GNOME to crash soon after boot when paired w/ initrd, plymouth
