{
  pkgs,
  fetchFromGitHub,
}: let
  flavor = "kanagawa-dragon";
in
  pkgs.stdenv.mkDerivation {
    pname = "yazi-flavor-${flavor}";
    version = "july";
    src = fetchFromGitHub {
      owner = "marcosvnmelo";
      repo = "${flavor}.yazi";
      rev = "49055274ff53772a13a8c092188e4f6d148d1694";
      hash = "sha256-ThQu7RkH3nYbTDSJhkKg2+sRkoRI/IkwbkvSatO6apU=";
    };

    installPhase = ''
      mkdir -p $out
      cp $src/* $out/
    '';
  }
