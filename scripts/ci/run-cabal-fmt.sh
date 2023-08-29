#!/usr/bin/env bash

set -euo pipefail

fd -e cabal -x cabal-fmt -i
