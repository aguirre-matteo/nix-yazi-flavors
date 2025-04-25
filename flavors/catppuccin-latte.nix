{ pkgs, fetchFromGitHub }:
let
  flavor = "catppuccin-latte";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "feb-26";
  src = fetchFromGitHub {
    owner = "yazi-rs";
    repo = "flavors";
    rev = "68326b4ca4b5b66da3d4a4cce3050e5e950aade5";
    hash = "sha256-nhIhCMBqr4VSzesplQRF6Ik55b3Ljae0dN+TYbzQb5s=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/${flavor}.yazi/* $out/
  '';
}
