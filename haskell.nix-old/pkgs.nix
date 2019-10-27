{
  pkgs = hackage:
    {
      packages = {
        "ghc-prim".revision = (((hackage."ghc-prim")."0.6.1").revisions).default;
        "rts".revision = (((hackage."rts")."1.0").revisions).default;
        "deepseq".revision = (((hackage."deepseq")."1.4.4.0").revisions).default;
        "containers".revision = (((hackage."containers")."0.6.0.1").revisions).default;
        "base".revision = (((hackage."base")."4.13.0.0").revisions).default;
        "array".revision = (((hackage."array")."0.5.4.0").revisions).default;
        "integer-gmp".revision = (((hackage."integer-gmp")."1.0.2.0").revisions).default;
        };
      compiler = {
        version = "8.9.20190601";
        nix-name = "ghc8920190601";
        packages = {
          "ghc-prim" = "0.6.1";
          "rts" = "1.0";
          "deepseq" = "1.4.4.0";
          "containers" = "0.6.0.1";
          "base" = "4.13.0.0";
          "array" = "0.5.4.0";
          "integer-gmp" = "1.0.2.0";
          };
        };
      };
  extras = hackage:
    { packages = { connect4 = ./.plan.nix/connect4.nix; }; };
  }