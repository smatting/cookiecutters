## How to develop
`nix-shell`, `hpack` then
* `cabal repl`
* `ghcid`
* `hoogle server --local`

## How to build
`nix-build release.nix`
The build is then in the symlink `result`.
