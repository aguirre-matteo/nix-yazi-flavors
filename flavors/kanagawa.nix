{ pkgs, fetchFromGitHub }:
let
  flavor = "kanagawa";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "feb-23";
  src = fetchFromGitHub {
    owner = "dangooddd";
    repo = "${flavor}.yazi";
    rev = "31167ed54c9cc935b2fa448d64d367b1e5a1105d";
    hash = "sha256-phwGd1i/n0mZH/7Ukf1FXwVgYRbXQEWlNRPCrmR5uNk=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
