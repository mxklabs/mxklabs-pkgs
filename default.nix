let
  #nixpkgs-sources = import ./nix/sources.nix;
  nixpkgs = import <nixpkgs> {};

  #mxklabs-example-cpp-app = import ./mxklabs/mxklabs-example-cpp-app;



  #hello = pkgs.writeShellScriptBin "hello" ''
  #  echo "Hello from the Nix channel overlay!"
  #'';

  #nixpkgs = import nixpkgs-sources.nixpkgs;

  mxklabs-example-cpp-app = nixpkgs.stdenv.mkDerivation rec {
    name = "mxklabs-example-cpp-app";
    src = builtins.fetchGit {
      url = "git@github.com:mxklabs/mxklabs-example-cpp-app.git";
    };

    baseInputs = [
    ];

    buildInputs = [
      nixpkgs.cmake
    ];
  };

  mxklabs-pkgs = {
    mxklabs-example-cpp-app = mxklabs-example-cpp-app;
  };

  #mxklabs-pkgs =
    
      #mxklabs-example-cpp-app = mxklabs-example-cpp-app {pkgs=nixpkgs; #.nixpkgs;
      #};
    #};

    #[ mxklabs-example-cpp-app ]
    # {
    #  overlays = [
    #    (self: super: {
    #      inherit hello;
    #    })
    #  ];
    #}

in
  mxklabs-pkgs
#mxklabs-example-cpp-app 
#mxklabs-pkgs

