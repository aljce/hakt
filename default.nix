{ compiler ? "ghc864"
, nixpkgs ? (import ./nix/nixpkgs.nix { inherit compiler; })
}:
with {
  drv = nixpkgs.haskellPackages.hakt;
};
if nixpkgs.pkgs.lib.inNixShell then
  drv.env
else
  drv
