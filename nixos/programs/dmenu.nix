{ pkgs, ... }: {
  environment.systemPackages = with pkgs;
    [
      (dmenu.overrideAttrs (oldAttrs: rec {
        pname = "dmenu";
        version = "2.24";
        buildInputs = [ ] ++ oldAttrs.buildInputs;
        src = "~/dotfiles/dmenu-3";
        phases = [ "installPhase" ];
        postInstall = "";
      }))
    ];
}
