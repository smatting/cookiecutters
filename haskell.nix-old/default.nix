{ pkgs ? (import ((import ./nix/sources.nix).nixpkgs) {}) }:
let
  haskell = (import ((import ./nix/sources.nix)."haskell.nix") { inherit pkgs; });

  # pkgPlan = haskell.callCabalProjectToNix
  #               { index-state = "2019-05-10T00:00:00Z"; src = pkgs.lib.cleanSource ./.;};

  # Instantiate a package set using the generated file.
  pkgSet = haskell.mkCabalProjectPkgSet {
    # plan-pkgs = import pkgPlan;
    plan-pkgs = import ./pkgs.nix;
    pkg-def-extras = [];
    modules = [
    ];
  };
in
  pkgSet.config.hsPkgs
