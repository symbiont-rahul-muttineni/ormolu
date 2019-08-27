#!/usr/bin/env bash
#
# Format Ormolu using current version of Ormolu.

set -e

nix run -f default.nix ormolu -c ormolu --mode inplace $(find src -type f -name "*.hs")
nix run -f default.nix ormolu -c ormolu --mode inplace $(find tests -type f -name "*.hs")
