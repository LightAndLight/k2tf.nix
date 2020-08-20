# k2tf.nix

## Usage

1. ```
   $ nix-prefetch-git https://github.com/LightAndLight/k2tf.nix --tag <version>
   {
       "url": "https://github.com/LightAndLight/k2tf.nix",
       "rev": <revision>,
       "date": <date>,
       "sha256": <sha256>,
       "fetchSubmodules": false
   }
   ```

2. ```
   $ cat <<EOF
   let 
     pkgs = import <nixpkgs> {};
     k2tf = 
       import 
         (pkgs.fetchFromGitHub { 
           owner = "LightAndLight"; 
           repo = "k2tf.nix"; 
           rev = "<version>"; 
           sha256 = "<sha256>"; 
         }) 
         { inherit pkgs; };
   in
     k2tf
   EOF
   ```
