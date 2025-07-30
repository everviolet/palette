{
  mkShellNoCC,
  callPackage,
  ...
}@pkgs:
let
  generate-palette = callPackage ./script.nix;
  scripts = [ generate-palette ];
in
mkShellNoCC {
  packages = scripts;
}
