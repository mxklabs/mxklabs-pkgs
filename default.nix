let
  nixpkgs = import <nixpkgs> {};

  mxklabs-example-cpp-app = nixpkgs.stdenv.mkDerivation rec {
    name = "mxklabs-example-cpp-app";
    src = #../mxklabs-example-cpp-app;
    builtins.fetchGit {
      url = "git@github.com:mxklabs/mxklabs-example-cpp-app.git";
    };

    nativeBuildInputs = [
      nixpkgs.cmake
    ];

    buildInputs = [
      mxklabs-example-cpp-lib1
    ];
  };

  mxklabs-example-cpp-lib1 = nixpkgs.stdenv.mkDerivation rec {
    name = "mxklabs-example-cpp-lib1";
    src = #../mxklabs-example-cpp-lib1;
    builtins.fetchGit {
     url = "git@github.com:mxklabs/mxklabs-example-cpp-lib1.git";
    };

    nativeBuildInputs = [
      nixpkgs.cmake
    ];
  };

  mxklabs-pkgs = {
    mxklabs-example-cpp-app = mxklabs-example-cpp-app;
    mxklabs-example-cpp-lib1 = mxklabs-example-cpp-lib1;
  };

in
  mxklabs-pkgs

