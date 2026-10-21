{ pkgs, ... }:

{
  programs.firefox.enable = true;
  programs.thunderbird.enable = true;
  programs.steam.enable = true;

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
      hashicorp.terraform
      pkgs.vscode-marketplace.darkriszty.markdown-table-prettify
      pkgs.vscode-marketplace.anthropic.claude-code
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
