pkgs: {
  base16 = pkgs.callPackage ./base16.nix { };

  catppuccin-frappe = pkgs.callPackage ./catppuccin-frappe.nix { };
  catppuccin-latte = pkgs.callPackage ./catppuccin-latte.nix { };
  catppuccin-macchiato = pkgs.callPackage ./catppuccin-macchiato.nix { };
  catppuccin-mocha = pkgs.callPackage ./catppuccin-mocha.nix { };

  dracula = pkgs.callPackage ./dracula.nix { };

  kanagawa = pkgs.callPackage ./kanagawa.nix { };
  kanagawa-dragon = pkgs.callPackage ./kanagawa-dragon.nix { };

  nord = pkgs.callPackage ./nord.nix { };

  onedark = pkgs.callPackage ./onedark.nix { };

  rose-pine = pkgs.callPackage ./rose-pine.nix { };
  rose-pine-dawn = pkgs.callPackage ./rose-pine-dawn.nix { };
  rose-pine-moon = pkgs.callPackage ./rose-pine-moon.nix { };

  tokyonight-day = pkgs.callPackage ./tokyonight-day.nix { };
  tokyonight-moon = pkgs.callPackage ./tokyonight-moon.nix { };
  tokyonight-night = pkgs.callPackage ./tokyonight-night.nix { };
  tokyonight-storm = pkgs.callPackage ./tokyonight-storm.nix { };

  vscode-dark-modern = pkgs.callPackage ./vscode-dark-modern.nix { };
  vscode-dark-plus = pkgs.callPackage ./vscode-dark-plus.nix { };
  vscode-light-modern = pkgs.callPackage ./vscode-light-modern.nix { };
  vscode-light-plus = pkgs.callPackage ./vscode-light-plus.nix { };
}
