{ pkgs, lib, system }:

lib.makeScope pkgs.newScope (self: with self; rec {
  fetchandroid = callPackage ./fetch.nix { inherit system; };
  mkGeneric = callPackage ./generic.nix { inherit system; };
  mkBuildTools = callPackage ./build-tools.nix { };
  mkCmdlineTools = callPackage ./cmdline-tools.nix { };
  mkEmulator = callPackage ./emulator.nix { };
  mkNdk = callPackage ./ndk.nix { };
  mkPlatformTools = callPackage ./platform-tools.nix { };
  mkPrebuilt = callPackage ./prebuilt.nix { };
  mkSrcOnly = callPackage ./src-only.nix { };
  mkTools = callPackage ./tools.nix { };
})
