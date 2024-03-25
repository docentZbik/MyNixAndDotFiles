
# default.nix


let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-22.11"; 
  pkgs = import nixpkgs { config = {}; overlays = []; };
in 

{
  k9s = pkgs.callPackage ./k9s.nix { };
}
