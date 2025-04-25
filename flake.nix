{
  description = ''
    A collection of Yazi flavors packaged using Nix!
    Ready to be used with Home-Manager's Yazi module.
  '';

  outputs = { self, ... }: {
    overlay = import ./overlay.nix;
  };
}
