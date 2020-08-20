{ pkgs ? import <nixpkgs> {} }:

let version = "0.5.0"; in

pkgs.buildGoModule {
  pname = "k2tf";
  inherit version;
  src = pkgs.fetchFromGitHub {
    owner = "sl1pm4t";
    repo = "k2tf";
    rev = "v${version}";
    sha256 = "0i1bhn0sccvnqbd4kv2xgng5r68adhcc61im2mn8hxmds5nf6in2";
  };
  modSha256 = "0pwc1vr1ycc8qrad6xgyrd66z40al833hxf50i2k3873w1n314qz";
}
