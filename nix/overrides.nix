{ pkgs }:

self: super:

with { inherit (pkgs.stdenv) lib; };

with pkgs.haskell.lib;

{
  hakt = (
    with rec {
      haktSource = pkgs.lib.cleanSource ../.;
      haktBasic  = self.callCabal2nix "hakt" haktSource { };
    };
    overrideCabal haktBasic (old: {
    })
  );
}
