{ pkgs, fetchFromGitHub }:
let
  flavor = "catppuccin-mocha";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "sep-13";
  src = fetchFromGitHub {
    owner = "yazi-rs";
    repo = "flavors";
    rev = "4296a380570399e3c36aec054f37aa48f35cf6b1";
    hash = "sha256-KNpr7eYHm2dPky1L6EixoD956bsYZZO3bCyKIyAlIEw=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/${flavor}.yazi/* $out/
  '';
}
