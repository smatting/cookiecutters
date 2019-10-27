let
  hsPkgs = import ./default.nix {};
in
  hsPkgs.shellFor { packages = ps: [ps.connect4]; withHoogle = true; }
