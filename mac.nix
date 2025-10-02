{ config, ... }:

{
  imports = [ ./home.nix ];
  home.homeDirectory = "/Users/otis";
  home.sessionVariables = {
    MOSH_SSH = "/usr/bin/ssh";
  };
  programs.fish.loginShellInit = ''
    source ${config.home.profileDirectory}/etc/profile.d/nix.fish
  '';
}
