{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [ "electron-25.9.0" ];
  };

  environment.systemPackages = with pkgs; [
    # nix run github:PanAeon/transg-tui

    # utils
    gnumake devour fastfetch zip ntfs3g
	ffmpeg gifski xkb-switch bluez
    unzip python3 bat gcc cmake
    git xclip stow pcre2 cargo nodejs_22 jq
	openssl rustc xdotool

    # coding
    wezterm fish neovim
    ripgrep fd ouch neovide
    transmission unar ffmpegthumbnailer poppler
	silicon bundix burpsuite

    # workflow
    lf yazi gtrash figma-linux
	chafa ueberzug doas broot fzf atool btop ncdu
    du-dust trash-cli xdragon lazygit ctpv

    # desktop
	qbittorrent yarn qbittorrent
	qutebrowser python311Packages.adblock
	librewolf element-desktop
    xwallpaper flameshot redshift clipmenu keepmenu bluetuith

    # apps
	simplescreenrecorder
    gparted heroic steam-run telegram-desktop discord betterdiscordctl
    mpv celluloid nomacs pavucontrol woeusb-ng r2modman keepassxc
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    (nerdfonts.override { fonts = [ "Mononoki" ]; })

    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
  ];
}
