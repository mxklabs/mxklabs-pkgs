{ overlays ? [] }:
let
  nixpkgs = import <nixpkgs> { overlays = [ (import ./overlay.nix) ] ++ overlays; };
in
  nixpkgs

