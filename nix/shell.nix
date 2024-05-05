# Docs for this file: https://github.com/input-output-hk/iogx/blob/main/doc/api.md#mkhaskellprojectinshellargs
# See `shellArgs` in `mkHaskellProject` in ./project.nix for more details.

{ repoRoot, inputs, pkgs, lib, system }:

# Each flake variant defined in your project.nix project will yield a separate
# shell. If no flake variants are defined, then cabalProject is the original 
# project.
cabalProject:

{
  name = "cardanonono";
  packages = with pkgs; [ nil nixfmt ];

  preCommit = {
    cabal-fmt.enable = true;
    fourmolu.enable = true;
    hlint.enable = true;
    nixpkgs-fmt.enable = true;
  };
}
