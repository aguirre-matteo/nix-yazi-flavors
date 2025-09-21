{
  pkgs,
  fetchFromGitHub,
}: let
  flavor = "kanagawa-dragon";
in
  pkgs.stdenv.mkDerivation {
    pname = "yazi-flavor-${flavor}";
    version = "apr-14";
    src = fetchFromGitHub {
      owner = "marcosvnmelo";
      repo = "${flavor}.yazi";
      rev = "49055274ff53772a13a8c092188e4f6d148d1694";
      hash = "sha256-gkzJytN0TVgz94xIY3K08JsOYG/ny63Oj2eyGWiWH4s=";
    };

    installPhase = ''
      mkdir -p $out
      cp $src/* $out/
    '';
  }
