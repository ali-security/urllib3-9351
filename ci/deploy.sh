#!/bin/bash

set -exo pipefail

python3 -m pip install --index-url 'https://:2026-01-07T16:24:42.685091Z@time-machines-pypi.sealsecurity.io/' --upgrade twine wheel build
python3 -m build
python3 -m twine upload dist/* -u $PYPI_USERNAME -p $PYPI_PASSWORD --skip-existing
