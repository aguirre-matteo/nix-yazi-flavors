{ pkgs, fetchFromGitHub }:
let
  flavor = "nord";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "jun-3";
  src = fetchFromGitHub {
    owner = "AdithyanA2005";
    repo = "${flavor}.yazi";
    rev = "3a791e9197a3d3ce7003d46ab6712bfc8fef666b";
    hash = "sha256-ubPIPasm1KHVX95nRvt03I1aLDh1qUtGL8sOHGJeZrU=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
