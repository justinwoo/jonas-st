{ pkgs ? import <nixpkgs> { } }:

let
  repo = pkgs.fetchFromGitHub {
    owner = "jonascarpay";
    repo = "nix";
    rev = "84813c67f9cb1b4c6dccd1b73bf91a8acd6d8753";
    sha256 = "0vhswpq8h5v43h6cqqpl7g0agai16jxkgbjik36y3728lp8zcisy";
  };
  imported = import "${repo}/desktop/st/default.nix" { inherit pkgs; };
in
imported.home.packages
