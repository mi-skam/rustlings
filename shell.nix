{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let pythonEnv = python3.withPackages (ps: [
]);

in mkShell {
  nativeBuildInputs = [ cargo rustc ];
  shellHook = ''
    export PATH="/home/plumps/.cargo/bin:$PATH"
  '';
}
