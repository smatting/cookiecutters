with (import ((import ./nix/sources.nix).nixpkgs) {});
pkgs.mkShell {
  buildInputs = [ cabal-install pkgs.haskell.compiler.ghcHEAD ];
}
