#!/usr/bin/env bash
# Generates the GTM template files from template.src.tpl, the single source.
#   ./build.sh        -> template.tpl      (prod, committed)
#   ./build.sh dev    -> template.dev.tpl  (dev, git-ignored)
#   ./build.sh all    -> both
set -euo pipefail
cd "$(dirname "$0")"

PROD_URL="https://signal.contimo.app"
DEV_URL="https://main--contimo-signal.netlify.app"

build() {
  local url="${1%/}" out="$2"
  sed "s#__SIGNAL_BASE_URL__#${url}#g" template.src.tpl > "$out"
  echo "built $out -> $url"
}

case "${1:-prod}" in
  prod) build "$PROD_URL" template.tpl ;;
  dev)  build "$DEV_URL" template.dev.tpl ;;
  all)  build "$PROD_URL" template.tpl; build "$DEV_URL" template.dev.tpl ;;
  *) echo "usage: $0 [prod|dev|all]" >&2; exit 1 ;;
esac
