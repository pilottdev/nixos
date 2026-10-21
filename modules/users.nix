{ ... }:

{
  users.users."pilott" = {
    uid = 1000;
    isNormalUser = true;
    description = "Pilott";
    extraGroups = [ "networkmanager" "wheel" "podman" "libvirtd" ];
  };
}
