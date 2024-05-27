{ pkgs, ... }: {
  # xdg.portal = {
  #   enable = true;
  #   # gtk portal needed to make gtk apps happy
  #   extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  # };

  # xdg.portal.enable = true;
  xdg.portal.configPackages = [ pkgs.xdg-desktop-portal-gtk ];

  services.flatpak.enable = true;
}
