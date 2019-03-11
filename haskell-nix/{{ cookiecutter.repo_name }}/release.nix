let
  nixpkgSrc = import ./nixpkgs-source.nix {};

  compiler = "ghc822";
  withHoogle = true;

  config = rec {
    packageOverrides = pkgs: rec {

      haskellPackages = pkgs.haskell.packages.${compiler}.override {
        overrides = self: super: rec {

          ghc = if withHoogle
                  then super.ghc // { withPackages = super.ghc.withHoogle; }
                  else super.ghc;

          myHaskellPackage =
            pkgs.haskell.lib.overrideCabal
              (pkgs.haskell.lib.justStaticExecutables
                (self.callPackage ./default.nix { }))
            (oldDerivation: {
                buildTools = [ super.hpack ];
                preConfigure = "hpack";
                testToolDepends = [];
                enableSharedExecutables = false;
              });

          rdf4h = pkgs.haskell.lib.dontCheck super.rdf4h;

        };
      };
    };
    allowUnfree = true;
  };

  pkgs = import nixpkgSrc { inherit config; };

in rec {
  myHaskellPackage = pkgs.haskellPackages.myHaskellPackage;
}
