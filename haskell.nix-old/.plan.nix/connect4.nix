{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "connect4"; version = "0.1.0.0"; };
      license = "NONE";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      };
    } // rec { src = (pkgs.lib).mkDefault ../.; }