{ pkgs, fetchFromGitHub }:
let
  flavor = "rose-pine-moon";
in
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "jan-16";

  src = fetchFromGitHub {
    owner = "Mintass";
    repo = "${flavor}.yazi";
    rev = "94385fe2e73adfb14c0305823a3538660636b52b";
    hash = "sha256-1aamk53q41fbd2s7p70rl0nnwqdz526fn6gmpbxy8cmj4abp4i2h=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
