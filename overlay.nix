final: prev:
{
  mxklabs-example-cpp-app = final.stdenv.mkDerivation rec {
    name = "mxklabs-example-cpp-app";
    src = #../mxklabs-example-cpp-app;
    builtins.fetchGit {
      url = "git@github.com:mxklabs/mxklabs-example-cpp-app.git";
    };

    nativeBuildInputs = [
      final.cmake
      final.git
    ];

    buildInputs = [
      final.mxklabs-example-cpp-lib1
    ];
  };

  mxklabs-example-cpp-lib1 = final.stdenv.mkDerivation rec {
    name = "mxklabs-example-cpp-lib1";
    src = #../mxklabs-example-cpp-lib1;
    builtins.fetchGit {
     url = "git@github.com:mxklabs/mxklabs-example-cpp-lib1.git";
    };

    nativeBuildInputs = [
      final.cmake
      final.git
    ];
  };
}
