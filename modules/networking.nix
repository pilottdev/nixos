{ pkgs, ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  # VPN
  services.netbird.enable = true;
  environment.systemPackages = with pkgs; [
    netbird-ui
    proton-vpn
  ];
}
