{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/nix.nix
    ./modules/networking.nix
    ./modules/locale.nix
    ./modules/desktop.nix
    ./modules/graphics.nix
    ./modules/users.nix
    ./modules/packages.nix
    ./modules/virtualisation.nix
  ];

  # First NixOS version installed on this machine. Do NOT change it, even
  # after upgrading: it does not affect which nixpkgs version is used.
  # See https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion
  system.stateVersion = "26.05";
}
