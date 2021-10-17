# mxklabs-pkgs

A nix channel for building mxklabs projects.

**NOTE**: This repository is set up for educational purposes and serves no useful purpose.

## Usage

To add the channel to your set-up:

```
nix-channel --add https://github.com/mxklabs/mxklabs-pkgs/archive/master.tar.gz mxklabs
nix-channel --update
```

To install a package:

```
nix-build '<mxklabs>' -A mxklabs-example-cpp-app
```

## Troubleshooting

If you get an error saying 
```
error: file 'mxklabs' was not found in the Nix search path (add it using $NIX_PATH or -I)
```

Try changing your `NIX_PATH`: 
```
export NIX_PATH=$NIX_PATH:$HOME/.nix-defexpr/channels
```
**NOTE**: This is because of [this](https://github.com/NixOS/nix/issues/2033) issue.