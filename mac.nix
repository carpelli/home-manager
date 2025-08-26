{
  imports = [ ./home.nix ];
  home.homeDirectory = "/Users/otis";
  home.sessionVariables = {
    MOSH_SSH = "/usr/bin/ssh";
  };
  programs.fish.shellInit = ''
    source ~/.nix-profile/etc/profile.d/nix.fish
  '';
}
