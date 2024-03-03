{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "occam";
  home.homeDirectory = "/home/occam";
  
  home.packages = with pkgs; [

  neofetch
  btop

  # archives
  zip
  xz
  unzip
  p7zip

  chromium


  # utils
  ripgrep # recursively searches directories for a regex pattern
  eza # A modern replacement for ‘ls’
  fzf # A command-line fuzzy finder
  just # Like a simplified MakeFile for project specific commands
  manix # CLI Nix Documentation Search

  ];


  programs.git = {
    enable = true;
    userName = "Logan Reed";
    userEmail = "me@loganreed.org";
  };


  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

