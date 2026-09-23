#!/usr/bin/env bash
set -euo pipefail
root=$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)
cd "$root"
make -f makefile.libretro platform=unix MULTITHREAD=-j4 -j4 >/dev/null
test -s hatarib_libretro.so
nm -D hatarib_libretro.so > /tmp/retrom-hatarib-symbols.$$
trap 'rm -f /tmp/retrom-hatarib-symbols.$$' EXIT
grep -q ' retro_serialize$' /tmp/retrom-hatarib-symbols.$$
grep -q ' retro_unserialize$' /tmp/retrom-hatarib-symbols.$$
