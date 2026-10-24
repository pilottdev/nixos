{ pkgs, ... }:

{
  # Podman
  virtualisation.containers.enable = true;
  virtualisation.podman.enable = true;
  environment.systemPackages = with pkgs; [
    podman-compose
  ];
  virtualisation.containers.containersConf.settings.engine.compose_warning_logs = false;

  # KVM / libvirt
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
}
