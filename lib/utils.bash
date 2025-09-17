# shellcheck shell=bash

set -euo pipefail

readonly PRE_COMMIT_REPO="https://github.com/pre-commit/pre-commit.git"

list_versions() {
  git ls-remote --tags --refs "${PRE_COMMIT_REPO}" \
    | grep -o 'refs/tags/v[[:digit:]]\+.*' \
    | cut -d/ -f3- \
    | sed 's/^v//'
}

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' \
    | LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n \
    | awk '{print $2}'
}
