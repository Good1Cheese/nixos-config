{ pkgs, ... }: {
    nixpkgs.config = {
        allowUnfree = true;
        permittedInsecurePackages = ["electron-25.9.0"];
    };

    environment.systemPackages = with pkgs; [
        # utils
        unzip python3 wget bat steam-run gcc cmake
        gnumake git xclip stow pavucontrol bluez pcre2
        cargo nodejs_21 jq

        # coding
        alacritty fish neovim ripgrep fd silicon burpsuite

        # workflow
        lf doas broot fzf atool btop ncdu du-dust trash-cli
        xdragon lazygit ctpv atuin

        # desktop
        xwallpaper udiskie flameshot redshift clipmenu dmenu tabbed
        # apps
        heroic firefox telegram-desktop discord betterdiscordctl mpv celluloid 
        nomacs r2modman
    ];

    fonts.packages = with pkgs; [
        (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
        # jetbrains-mono
        noto-fonts
        noto-fonts-emoji
        twemoji-color-font
        font-awesome
        powerline-fonts
        powerline-symbols
        (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    ];
}
