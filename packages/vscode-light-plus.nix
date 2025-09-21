{ pkgs, fetchFromGitHub }:
let
  flavor = "vscode-light-plus";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "jun-11";
  src = fetchFromGitHub {
    owner = "956MB";
    repo = "${flavor}.yazi";
    rev = "83c8be6e0d0240c5fec6be5b8b6d907a097a0e0a";
    hash = "sha256-YhHIYKaA4m0ok7vSMwX1TNLGLN2Z2ACciIbJAm6PmJM=";
  };

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out/
  '';
}
