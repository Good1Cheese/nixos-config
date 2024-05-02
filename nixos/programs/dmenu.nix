{ pkgs, ... }: {
  environment.systemPackages = with pkgs;
    [
      (dmenu.overrideAttrs (oldAttrs: rec {
        patches = [
          /home/cheese/dotfiles/dmenu-patches/dmenu-highlight-4.9.diff
          # /home/cheese/dotfiles/dmenu-patches/dmenu-brodie-theme-4.9.diff
        ];
      }))
    ];
}
