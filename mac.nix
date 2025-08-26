{
  imports = [ ./home.nix ];
  home.sessionVariables = {
    MOSH_SSH = "/usr/bin/ssh";
  };
}
