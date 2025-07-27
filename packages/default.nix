pkgs: {
  catppuccin-frappe = pkgs.callPackage ./catppuccin-frappe.nix {};
  catppuccin-latte = pkgs.callPackage ./catppuccin-latte.nix {};
  catppuccin-macchiato = pkgs.callPackage ./catppuccin-macchiato.nix {};
  catppuccin-mocha = pkgs.callPackage ./catppuccin-mocha.nix {};

  tokyonight-day = pkgs.callPackage ./tokyonight-day.nix {};
  tokyonight-moon = pkgs.callPackage ./tokyonight-moon.nix {};
  tokyonight-night = pkgs.callPackage ./tokyonight-night.nix {};
  tokyonight-storm = pkgs.callPackage ./tokyonight-storm.nix {};

  vscode-dark-modern = pkgs.callPackage ./vscode-dark-modern.nix {};
  vscode-dark-plus = pkgs.callPackage ./vscode-dark-plus.nix {};
  vscode-light-modern = pkgs.callPackage ./vscode-light-modern.nix {};
  vscode-light-plus = pkgs.callPackage ./vscode-light-plus.nix {};

  kanagawa = pkgs.callPackage ./kanagawa.nix {};
  kanagawa-dragon = pkgs.callPackage ./kanagawa-dragon.nix {};

  dracula = pkgs.callPackage ./dracula.nix {};
  nord = pkgs.callPackage ./nord.nix {};
  onedark = pkgs.callPackage ./onedark.nix {};
}
