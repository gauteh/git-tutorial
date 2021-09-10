#!/usr/bin/env bash

for s in 0*.sh; do
  content=$(<$s)
  awk '{ if (NR==1) { printf "%-60s\n", $0 } else { print } }' < $s | silicon -l bash -o ${s%%sh}png --background '#fff0' --pad-horiz 10 --pad-vert 10
done
