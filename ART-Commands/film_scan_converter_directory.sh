#!/bin/bash

# Python interpreter to use
PYTHON=$HOME/dev/Film-Scan-Converter/FilmScanConverterVenv/bin/python

# directory where Film-Scan-Converter is located
FSC_DIR=$HOME/dev/Film-Scan-Converter

export PATH=$HOME/.local/bin:/opt/local/bin:/usr/local/bin:/usr/bin:$PATH

#############################################################################

# turn off cropping and modules coming later in the pipeline
d=$(mktemp -d)
t=$d/p1.arp
wd=$(-d)
cat <<EOF > $t
[Version]
Version=1037

[Crop]
Enabled=false
EOF

"${PYTHON}" "${FSC_DIR}/source/Film Scan Converter.pyw" "-d" "$1" "-o" "$1/converted" &

# remove the temporary dir
rm -rf $d
