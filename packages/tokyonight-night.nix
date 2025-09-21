{ pkgs, fetchFromGitHub }:
let
  flavor = "tokyonight-night";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "jun-3";
  src = fetchFromGitHub {
    owner = "kalidyasin";
    repo = "yazi-flavors";
    rev = "fa19b40767f084c541a63196046a307d0507098e";
    hash = "sha256-8D1hrusX9IdlV6Br0bKfww6othFqDiejGnEtBwyh1ak=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/${flavor}.yazi/* $out/
  '';
}
