{
  imports = [ ./home.nix ];
  home.homeDirectory = "/Users/otis";
  home.sessionVariables = {
    MOSH_SSH = "/usr/bin/ssh";
  };
}
