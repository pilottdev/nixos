{ pkgs, ... }:

{
  # Podman
  virtualisation.containers.enable = true;
  virtualisation.podman.enable = true;
  environment.systemPackages = with pkgs; [
    podman-compose
  ];

  # KVM / libvirt
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
}
