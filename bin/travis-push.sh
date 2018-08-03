#!/usr/bin/env bash

pdfFile=$1

echo "Trying to push PDF to GitHub"
# setup git
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"

git checkout ${TRAVIS_BRANCH}
git add -f "${pdfFile}"
git commit -m "Travis update of PDF: ${pdfFile} on $(date) (Build ${TRAVIS_BUILD_NUMBER})" -m "[skip ci]" >/dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "A new PDF file exists. Uploading it to GitHub"
  git remote add github "https://${GH_TOKEN}@github.com/CodeLionX/actordb-paper.git" >/dev/null 2>&1
  git push --quiet --set-upstream github ${TRAVIS_BRANCH}
else
  echo "No changes. Skipping upload"
fi
