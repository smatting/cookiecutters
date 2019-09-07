A simple way is using nix just to get the the tools - ghc, cabal, etc - and then use the new-* cabal commands to fetch and build packages.

```sh
sudo nix-channel --add https://nixos.org/channels/nixpkgs-unstable unstable # if you don't already have this
sudo nix-channel --update
# git clone git://github.com/ocharles/HieDb
# cd HieDb
nix-shell -p 'with (import <unstable> {}); haskell.packages.ghc881.ghcWithPackages (hs: [ hs.cabal-install ])'
cabal new-update
cabal new-build
```
