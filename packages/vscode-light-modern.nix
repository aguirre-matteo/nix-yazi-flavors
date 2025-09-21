{ pkgs, fetchFromGitHub }:
let
  flavor = "vscode-light-modern";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "jun-11";
  src = fetchFromGitHub {
    owner = "956MB";
    repo = "${flavor}.yazi";
    rev = "c054b127da55e32bce5928fc2287ee3fb30f873b";
    hash = "sha256-q32/aXBuI9RjVS1zDX9OcElVw2WMC+0qRSg9Hs4Q64s=";
  };

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out/
  '';
}
