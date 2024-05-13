{ pkgs, ... }: {
  programs.fish.enable = true;

  users = {
    defaultUserShell = pkgs.fish;

    users.cheese = {
      isNormalUser = true;
      description = "GoodCheese";
      extraGroups = [ "adbusers" "networkmanager" "wheel" "input" "libvirtd" ];
      packages = with pkgs; [ ];
    };
  };
}
