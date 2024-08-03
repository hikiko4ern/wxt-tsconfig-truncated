#!/usr/bin/env bash

n="${1:-100}"
dir='entrypoints'

rm -rf "$dir/"dummy*.content.ts

for ((i = 1; i <= n; i++)); do
  echo "export default defineContentScript({ matches: ['*://*/*'], main(ctx) {} });" >"$dir/dummy${i}.content.ts"
done
