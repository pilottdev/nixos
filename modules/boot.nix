{ pkgs, ... }:

{
  # Switch to latest kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Boot configuration
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 7;
  boot.loader.efi.canTouchEfiVariables = true;
}
