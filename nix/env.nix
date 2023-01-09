{ nixpkgs ? import <nixpkgs> { } }:
let pkgs = import ./packages.nix { inherit nixpkgs; }; in
with pkgs;
{
  system = [
    coreutils
    gnugrep
  ];

  main = [
    pls
    nodejs-16_x
    pnpm
  ];

  dev = [
    pnpm
    webstorm
  ];

  lint = [
    precommit-patch-nix
    pre-commit
    nixpkgs-fmt
    prettier
    shfmt
    shellcheck
    gitlint
    sg
  ];

  releaser = [
    pls
    nodejs-16_x
    sg
    prettier
  ];
}
