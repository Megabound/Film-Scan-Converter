#!/bin/bash

# Python interpreter to use
PYTHON={path to your Film Scan Converter VENV python executable}

# directory where Film-Scan-Converter is located
FSC_DIR={path to Film Scan Converter root dir}

f=""

for file in "$@"; do
	f="${f} ${file}"
done

"${PYTHON}" "${FSC_DIR}/source/Film Scan Converter.pyw" "-f" "$f" "-o" "$1/converted" &
