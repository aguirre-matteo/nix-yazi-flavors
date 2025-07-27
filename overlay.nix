final: prev: {
  yazi-flavors = {
    catppuccin-frappe = prev.callPackage ./flavors/catppuccin-frappe.nix {};
    catppuccin-latte = prev.callPackage ./flavors/catppuccin-latte.nix {};
    catppuccin-macchiato = prev.callPackage ./flavors/catppuccin-macchiato.nix {};
    catppuccin-mocha = prev.callPackage ./flavors/catppuccin-mocha.nix {};

    tokyonight-day = prev.callPackage ./flavors/tokyonight-day.nix {};
    tokyonight-moon = prev.callPackage ./flavors/tokyonight-moon.nix {};
    tokyonight-night = prev.callPackage ./flavors/tokyonight-night.nix {};
    tokyonight-storm = prev.callPackage ./flavors/tokyonight-storm.nix {};

    vscode-dark-modern = prev.callPackage ./flavors/vscode-dark-modern.nix {};
    vscode-dark-plus = prev.callPackage ./flavors/vscode-dark-plus.nix {};
    vscode-light-modern = prev.callPackage ./flavors/vscode-light-modern.nix {};
    vscode-light-plus = prev.callPackage ./flavors/vscode-light-plus.nix {};

    kanagawa = prev.callPackage ./flavors/kanagawa.nix {};
    kanagawa-dragon = prev.callPackage ./flavors/kanagawa-dragon.nix {};

    dracula = prev.callPackage ./flavors/dracula.nix {};
    nord = prev.callPackage ./flavors/nord.nix {};
    onedark = prev.callPackage ./flavors/onedark.nix {};
  };
}
