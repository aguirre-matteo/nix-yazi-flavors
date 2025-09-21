{ pkgs, fetchFromGitHub }:
let
  flavor = "onedark";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "apr-15";
  src = fetchFromGitHub {
    owner = "BennyOe";
    repo = "${flavor}.yazi";
    rev = "668d71d967857392012684c7dd111605cfa36d1a";
    hash = "sha256-tfkzVa+UdUVKF2DS1awEusfoJEjJh40Bx1cREPtewR0=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
