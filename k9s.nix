
# k9s.nix

{
  lib,
  stdenv,
  fetchzip,
}:


stdenv.mkDerivation {
  pname = "k9s";
  version = "2.12.1";

  src = fetchTarball "https://github.com/derailed/k9s/releases/download/v0.32.4/k9s_Linux_amd64.tar.gz"; 


  installPhase = ''
    mkdir -p $out/bin
    cp $out/k9s $out/bin
  '';
}
