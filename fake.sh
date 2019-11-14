#!/usr/bin/env bash

set -eu
set -o pipefail

dotnet .paket/paket.exe install
dotnet tool restore
dotnet fake "$@"