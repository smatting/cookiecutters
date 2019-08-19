## How to develop
```
hpack
cabal2nix . > default.nix
nix-shell
cabal new-repl
```

```
nix-shell
cabal new-repl
ghcid
hoogle server --local
```

## How to build
`nix-build --attr myHaskellPackage release.nix`
The build is then in the symlink `result`.
