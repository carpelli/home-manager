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
        name = "pure";
        src = pkgs.fishPlugins.pure.src;
      }
      {
        name = "autopair";
	src = pkgs.fishPlugins.autopair.src;
      }
      {
        name = "done";
	src = pkgs.fishPlugins.done.src;
      }
      {
        name = "async-prompt";
	src = pkgs.fishPlugins.async-prompt.src;
      }
    ];
    shellInit = ''
      set -g async_prompt_functions _pure_prompt_git
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
