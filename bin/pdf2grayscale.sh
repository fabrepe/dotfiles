#!/bin/bash

if [[ "$1" =~ "(-h)|(--help)" ]]
then
  echo "usage: $0 INPUT_FILE [OUTPUT_FILE]"
  echo "default OUTPUT_FILE: 'output.pdf'"
  exit 1
fi

  OUTPUT="${1%%.pdf}_grayscale.pdf"
if [ "$2" != "" ]
then
  OUTPUT="$2"
fi

gs \
 -sOutputFile=$OUTPUT \
 -sDEVICE=pdfwrite \
 -sColorConversionStrategy=Gray \
 -dProcessColorModel=/DeviceGray \
 -dCompatibilityLevel=1.4 \
 -dNOPAUSE \
 -dBATCH \
 $1
