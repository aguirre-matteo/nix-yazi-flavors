{
  description = ''
    A collection of Yazi flavors packaged using Nix!
    Ready to be used with Home-Manager's Yazi module.
  '';

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";
  };

  outputs = { self, nixpkgs, systems }: let
    eachSystem = nixpkgs.lib.genAttrs (import systems);
  in {
    packages = eachSystem (system: import ./packages nixpkgs.legacyPackages.${system});
    checks = eachSystem (system: self.packages.${system});
    overlays.default = import ./overlay.nix;
    overlay = import ./overlay.nix; # Deprecated
  };
}
