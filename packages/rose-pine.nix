{ pkgs, fetchFromGitHub }:
let
  flavor = "rose-pine";
in
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "jan-16";

  src = fetchFromGitHub {
    owner = "Mintass";
    repo = "${flavor}.yazi";
    rev = "d91f8f2ef53b5ba4edb455164b1570f9c3a8341a";
    hash = "sha256-1d7kab54wka1hia8vg06j289q4gsfnvysjcnqxqwigy4d7z3i55b=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
