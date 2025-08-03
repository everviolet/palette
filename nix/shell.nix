{
  mkShellNoCC,
  callPackage,
  evgLib,
  riceLib,
  ...
}:
let
  generate-palette = callPackage ./script.nix { inherit evgLib riceLib; };
  scripts = [ generate-palette ];
in
mkShellNoCC {
  packages = scripts;
}
