#!/bin/bash

# In current form, script not necessary if this directory is /etc/nixos
# OR if this directory symlinked as /etc/nixos
sudo nixos-rebuild switch --flake .#riverview
