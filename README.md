# NixOS

This repository contains my personal [NixOS](https://nixos.org/) configuration, managed with [flakes](https://wiki.nixos.org/wiki/Flakes), using the **unstable** channel and the **latest available Linux kernel**.

## Installation

1. Clone this repository:

```bash
nix-shell -p git --run 'git clone git@github.com:hugofresnel/nixos.git' && cd nixos
```

2. Update hardware-configuration:

```bash
sudo cp /etc/nixos/hardware-configuration.nix .
```

3. Build for the first time:

```bash
sudo NIX_CONFIG="experimental-features = nix-command flakes" nixos-rebuild switch --flake .#nixos
```

## Update

```bash
nix flake update
sudo nixos-rebuild switch --flake .#nixos
```

## Clean

```bash
sudo nix-collect-garbage -d
sudo nixos-rebuild boot --flake .#nixos
```
