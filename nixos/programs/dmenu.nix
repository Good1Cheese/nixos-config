{ pkgs, ... }: {
  environment.systemPackages = with pkgs;
    [
      (dmenu.overrideAttrs (oldAttrs: rec {
        # Using a local file
        configFile =
          writeText "config.def.h" (builtins.readFile ./configs/config.h);
        postPatch = "${oldAttrs.postPatch} cp ${configFile} config.def.h";
        patches = [
          /home/cheese/nixos-config/nixos/programs/patches/p-dmenu/instant-4.6.diff
          /home/cheese/nixos-config/nixos/programs/patches/p-dmenu/border.diff
          # /home/cheese/dotfiles/dmenu-patches/dmenu-highlight-4.9.diff
          /home/cheese/nixos-config/nixos/programs/patches/p-dmenu/theme-4.9.diff
          # /home/cheese/dotfiles/dmenu-patches/dmenu-lineheight-5.2.diff
          # /home/cheese/dotfiles/dmenu-patches/dmenu-numbers-4.9.diff
        ];
      }))
    ];
}
