{ pkgs, fetchFromGitHub }:
let
  flavor = "vscode-dark-modern";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "jun-11";
  src = fetchFromGitHub {
    owner = "956MB";
    repo = "${flavor}.yazi";
    rev = "cd605412a6326ba6e99c3386ed47455854707b68";
    hash = "sha256-ErlGclqCIvb3P0nhznJJ3QbWJpiCzQJzOFxAzC+pxVw=";
  };

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out/
  '';
}
