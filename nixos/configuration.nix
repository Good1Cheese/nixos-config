{
  imports = [
    ./hardware-configuration.nix
    ./modules/bundle.nix
    ./packages.nix
    ./programs/bundle.nix
  ];

  # environment.shellAliases = { dmenu = "~/Projects/fist-div/dmenu/dmenu-2"; };

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "23.11"; # Don't change
}
