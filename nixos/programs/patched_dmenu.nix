{ pkgs, ... }: {
  environment.systemPackages = with pkgs;
    [
      (dmenu.overrideAttrs (oldAttrs: rec {
        # Using a local file
        configFile = writeText "config.def.h" (builtins.readFile ./config.h);
        postPatch = "${oldAttrs.postPatch} cp ${configFile} config.def.h";
        patches = [
          /home/cheese/dotfiles/dmenu-patches/dmenu-instant-4.6.diff
          # /home/cheese/dotfiles/dmenu-patches/dmenu-highlight-4.9.diff
          /home/cheese/dotfiles/dmenu-patches/dmenu-brodie-theme-4.9.diff
          # /home/cheese/dotfiles/dmenu-patches/dmenu-lineheight-5.2.diff
          # /home/cheese/dotfiles/dmenu-patches/dmenu-numbers-4.9.diff
        ];
      }))
    ];
}
