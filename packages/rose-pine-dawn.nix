{ pkgs, fetchFromGitHub }:
let
  flavor = "rose-pine-dawn";
in
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "jan-16";

  src = fetchFromGitHub {
    owner = "Mintass";
    repo = "${flavor}.yazi";
    rev = "d82f54f7c646352dc03bfc5cb5c849afaf5b8b79";
    hash = "sha256-0648rl0xcjhwrxldvnp15sbxydlwyrccc922vk0qjkkdl26fz8lh=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
