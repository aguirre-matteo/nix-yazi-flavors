{ pkgs, fetchFromGitHub }:
let
  flavor = "vscode-dark-plus";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "jun-11";
  src = fetchFromGitHub {
    owner = "956MB";
    repo = "${flavor}.yazi";
    rev = "113cc480e45d56851fa04e3a38e767a60445bf77";
    hash = "sha256-2XNgOoaWcagq9KqMNKcmsAUdbBJ38EQtF9l9hHChJYM=";
  };

  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out/
  '';
}
