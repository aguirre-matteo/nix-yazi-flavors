{ pkgs, fetchFromGitHub }:
let
  flavor = "tokyonight-moon";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "feb-26";
  src = fetchFromGitHub {
    owner = "kalidyasin";
    repo = "yazi-flavors";
    rev = "92a09a65549689ecf67764ef69e4225c1d1a850c";
    hash = "sha256-WW1FHcQoGJ3dcCq7Wp1/kmoC2bzkUlP674HbeYk5YM4=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/${flavor}.yazi/* $out/
  '';
}
