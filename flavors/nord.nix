{ pkgs, fetchFromGitHub }:
let
  flavor = "nord";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "feb-23";
  src = fetchFromGitHub {
    owner = "AdithyanA2005";
    repo = "${flavor}.yazi";
    rev = "99d2c18f41940a54a5472bcb9b630554f02ad23b";
    hash = "sha256-iHYJg7Ez3mBn9XmPtGWU68B4YhuQaSVzLTLPeKXHgWA=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
