{ pkgs, fetchFromGitHub }:
let
  flavor = "kanagawa";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "aug-26";
  src = fetchFromGitHub {
    owner = "dangooddd";
    repo = "${flavor}.yazi";
    rev = "a0b1d9dec31387b5f8a82c96044e6419b6c46534";
    hash = "sha256-nGFiAgVWfq7RkuGGCt07zm3z7ZTGiIPIR319ojPfdUk=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
