{ nixpkgs ? import <nixpkgs> { } }:
let
  pkgs = rec {
    atomi = (
      with import (fetchTarball "https://github.com/kirinnee/test-nix-repo/archive/refs/tags/v15.2.0.tar.gz");
      {
        inherit pls webstorm precommit-patch-nix sg;
      }
    );
    "Unstable 8th Jan 2023" = (
      with import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/b3818a46e686f24561a28eaa9fcf35e18b8d8e89.tar.gz") { };
      {
        inherit
          coreutils
          gnugrep

          pre-commit
          gitlint
          nodejs-16_x
          jq

          nixpkgs-fmt
          shfmt
          shellcheck;

        prettier = nodePackages.prettier;
        pnpm = nodePackages.pnpm;
      }
    );
  };
in
with pkgs;
atomi // pkgs."Unstable 8th Jan 2023"
