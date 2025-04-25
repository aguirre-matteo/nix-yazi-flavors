{ pkgs, fetchFromGitHub }:
let
  flavor = "vscode-dark-modern";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "mar-22";
  src = fetchFromGitHub {
    owner = "956MB";
    repo = "vscode.yazi";
    rev = "63268f169cf821a72c036ab7e0a772a8c4815845";
    hash = "sha256-rdK11kU792jlxlY1lG4vVmfewS5F3tg8XaV6WIkS4T8=";
  };

  installPhase = ''
    mkdir -p $out
    cp -r $src/themes/${flavor}.yazi/* $out/
  '';
}
