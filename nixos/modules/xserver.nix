{ pkgs, inputs, ... }: {
  services = {
    # displayManager = {
    #   defaultSession = "none+awesome";
    # autoLogin = {
    #   enable = true;
    #   user = "cheese";
    # };
    # };

    xserver = {
      enable = true;
      videoDrivers = [ "amdgpu" ];
      xkb = {
        layout = "us, ru";
        options = "grp:alt_shift_toggle";
      };

	  displayManager.startx.enable = true;
      windowManager.awesome = { enable = true; };
    };
  };
}
