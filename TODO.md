# TODO LIST FOR NIXOS CONFIG

In no particular order,

- Fix default apps
- Set up hiawatha drives
  - consider other mount point besides /mnt ?
- Configure hiawatha-specific settings, etc.
- Configure software
    - Configure Neovim
        - Look into additional plugins?
        - Should nvim configuration actually be system-wide since install is system-wide?
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
- Change wallpaper dir again?
    - users/${username}/${hostname}.jpg would allow any user to select per-host wallpapers
    - would have to pass username from shell or something rather than from nixos flake as-is
    - ... because currently it would be static, and would not improve this.
- Take another look at hosts/system concept... figure out which programs should really be universal
