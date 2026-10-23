{ pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.thunderbird.enable = true;
  programs.steam.enable = true;

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      pkgs.vscode-marketplace.darkriszty.markdown-table-prettify

      jnoortheen.nix-ide
      hashicorp.terraform
      anthropic.claude-code
      esbenp.prettier-vscode
      dbaeumer.vscode-eslint
      bradlc.vscode-tailwindcss
      svelte.svelte-vscode
    ];
  };

  environment.systemPackages = with pkgs; [
    nixfmt
    git
    gh
    glab
    forgejo-cli
    curl
    rsync
    nmap
    netcat-openbsd
    sops
    age
    discord
    claude-code
    ansible
    opentofu
    kubectl
    talosctl
  ];
}
