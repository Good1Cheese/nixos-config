{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [ "electron-25.9.0" ];
  };

  environment.systemPackages = with pkgs; [
    # utils
    gnumake devour fastfetch qbittorrent zip ntfs3g ffmpeg
	xkb-switch droidcam polkit_gnome
    sqlite unzip python3 wget bat gcc cmake
    git xclip stow bluez pcre2 cargo nodejs_22 jq

    # coding
    alacritty wezterm pistol fish neovim kitty
    ripgrep fd ouch zoxide neovide
    transmission unar ffmpegthumbnailer poppler silicon bundix burpsuite

    # workflow
    lf yazi
	chafa ueberzug doas broot fzf atool btop ncdu
    du-dust trash-cli xdragon lazygit ctpv ueberzugpp atuin

    # desktop
    xwallpaper flameshot redshift clipmenu keepmenu

    # apps
    gparted tabbed heroic steam-run firefox telegram-desktop discord betterdiscordctl
    mpv celluloid nomacs pavucontrol woeusb-ng r2modman keepassxc
  ];

  fonts.packages = with pkgs; [
    # jetbrains-mono
    noto-fonts noto-fonts-emoji
    twemoji-color-font font-awesome powerline-fonts powerline-symbols
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    (nerdfonts.override { fonts = [ "Mononoki" ]; })
    # (nerdfonts.override { fonts = [ "Source Code Pro" ]; })
  ];
}
