#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR/..

NEW_VERSION="${1}"

echo "Bumping version: ${NEW_VERSION}"

for pkg in {mad_pay,mad_pay_android,mad_pay_ios,mad_pay_platform_interface}; do
  # Bump version in pubspec.yaml
  perl -pi -e "s/^version: .*/version: $NEW_VERSION/" packages/$pkg/pubspec.yaml
done

perl -pi -e "s/mad_pay: .*/mad_pay: ^$NEW_VERSION/" packages/mad_pay/README.md