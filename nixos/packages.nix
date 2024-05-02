{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [ "electron-25.9.0" ];
  };

  environment.systemPackages = with pkgs; [
    # utils
    gnumake
    devour
    any-nix-shell
    qbittorrent
    ntfs3g
    ffmpeg
    gparted
    tabbed
    xkb-switch
    # fcitx5
    # fcitx5-configtool
    woeusb-ng
    polkit_gnome
    # xorg.libX11
    # xorg.libXft
    sqlite
    unzip
    python3
    wget
    bat
    steam-run
    gcc
    cmake
    git
    xclip
    stow
    bluez
    pcre2
    cargo
    nodejs_21
    jq

    # coding
    alacritty
    kitty
    pistol
    fish
    neovim
    ripgrep
    fd
    silicon
    burpsuite

    # workflow
    lf
    chafa
    ueberzug
    doas
    broot
    fzf
    atool
    btop
    ncdu
    du-dust
    trash-cli
    xdragon
    lazygit
    ctpv
    ueberzugpp 
    atuin

    # desktop
    xwallpaper
    flameshot
    redshift
    clipmenu
    dmenu
    tabbed

    # apps
    heroic
    firefox
    telegram-desktop
    discord
    betterdiscordctl
    mpv
    celluloid
    nomacs
    pavucontrol
    r2modman
  ];

  fonts.packages = with pkgs; [
    # jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    (nerdfonts.override { fonts = [ "Mononoki" ]; })
    # (nerdfonts.override { fonts = [ "Source Code Pro" ]; })
  ];
}
