#!/usr/bin/env bash

mainFile=$1
if [ -z $2 ]; then
  pdfName=$2
else
  pdfName=$1.pdf
fi
echo "Setting pdf name to ${pdfName}"

echo "Checking file existance for ${pdfName}"
# remove pdfs if present
[ -f "${pdfName}" ] && rm "${pdfName}" && echo "removed already existing PDF"

# test if pdf still exists
[ -f "${pdfName}" ] && echo "PDF is still there! Exiting test!" && exit 1


# build pdf
echo "Building PDF using pdflatex and biber on ${mainFile}.tex"
pdflatex -synctex=1 -interaction=nonstopmode -shell-escape "${mainFile}.tex"
biber "${mainFile}"
pdflatex -synctex=1 -interaction=nonstopmode -shell-escape "${mainFile}.tex"
mv "${mainFile}.pdf" "${pdfName}"

# only exit successfully if pdf was build successfully
[ -f "${pdfName}" ] && exit 0 || exit 1
