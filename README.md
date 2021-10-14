# mxklabs-pkgs

A nix channel for building mxklabs projects.

**NOTE**: This repository is set up for educational purposes and serves no useful purpose.

## Usage

To add the channel to your set-up:

```sh
nix-channel --add https://github.com/mxklabs/mxklabs-pkgs/archive/master.tar.gz mxklabs
nix-channel --update
```

To install a package:

```sh
nix-build 'mxklabs' -A <package_name>
```
