{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    plugins = [
      {
        name = "fzf-fish";
        src = pkgs.fishPlugins.fzf-fish.src;
      }
      {
        name = "hydro";
        src = pkgs.fishPlugins.hydro.src;
      }
      {
        name = "autopair";
	src = pkgs.fishPlugins.autopair.src;
      }
    ];
    shellInit = ''
      source ~/.nix-profile/etc/profile.d/nix.fish
    '';
  };
  programs.direnv.enable = true;

  programs.eza = {
    enable = true;
    enableFishIntegration = true;
    extraOptions = [
      "--hyperlink"
    ];
  };
}
