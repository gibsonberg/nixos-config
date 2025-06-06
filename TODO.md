# TODO LIST FOR NIXOS CONFIG

In no particular order,

- Further configure GNOME
    - Set default apps for file types declaratively
    - Adjust wallpaper dir
        - I tend to set my wallpapers by system, and I'm currently the only user...
        - As such, it may work to set wallpapers via a hostname vairable
        - And feeding that into my GNOME config to select the appropriate filename
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
