{ lib, ... }:

{
  # GNOME
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # GNOME settings
  programs.dconf.profiles.user.databases = [
    {
      settings = {
        "org/gnome/shell/keybindings" = {
          switch-to-application-1 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
          switch-to-application-2 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
          switch-to-application-3 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
          switch-to-application-4 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
          switch-to-application-5 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
          switch-to-application-6 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
          switch-to-application-7 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
          switch-to-application-8 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
          switch-to-application-9 = lib.gvariant.mkEmptyArray lib.gvariant.type.string;
        };

        "org/gnome/mutter".dynamic-workspaces = false;
        "org/gnome/desktop/wm/preferences".num-workspaces = lib.gvariant.mkInt32 4;

        "org/gnome/desktop/wm/keybindings" = {
          switch-to-workspace-1 = [ "<Super>1" ];
          switch-to-workspace-2 = [ "<Super>2" ];
          switch-to-workspace-3 = [ "<Super>3" ];
          switch-to-workspace-4 = [ "<Super>4" ];
          move-to-workspace-1 = [ "<Super><Shift>1" ];
          move-to-workspace-2 = [ "<Super><Shift>2" ];
          move-to-workspace-3 = [ "<Super><Shift>3" ];
          move-to-workspace-4 = [ "<Super><Shift>4" ];
          close = [ "<Super>BackSpace" "<Alt>F4" ];
        };

        "org/gnome/settings-daemon/plugins/media-keys" = {
          control-center = [ "<Super>i" ];
          home = [ "<Super>e" ];
          volume-up = [ "<Super><Control>Up" ];
          volume-down = [ "<Super><Control>Down" ];
          next = [ "<Super><Control>Right" ];
          previous = [ "<Super><Control>Left" ];
          custom-keybindings = [
            "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal/"
          ];
        };

        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/terminal" = {
          name = "Terminal";
          command = "kgx";
          binding = "<Super>Return";
        };

        "org/gnome/desktop/interface".enable-hot-corners = false;
        "org/gnome/desktop/notifications".show-in-lock-screen = false;

        "org/gnome/desktop/privacy" = {
          remember-recent-files = true;
          recent-files-max-age = lib.gvariant.mkInt32 7;
          remove-old-trash-files = true;
          remove-old-temp-files = true;
          old-files-age = lib.gvariant.mkUint32 30;
        };

        "org/gnome/desktop/session".idle-delay = lib.gvariant.mkUint32 900;

        "org/gnome/settings-daemon/plugins/power" = {
          sleep-inactive-ac-type = "nothing";
          sleep-inactive-battery-type = "nothing";
        };
      };
    }
  ];

  # Printing
  services.printing.enable = true;

  # Audio
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
