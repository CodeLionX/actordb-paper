# actordb-paper [![Build Status](https://travis-ci.com/CodeLionX/actordb-paper.svg?token=pqFUU2qudhkNenBcNwxf&branch=master)](https://travis-ci.com/CodeLionX/actordb-paper)
Paper about https://github.com/CodeLionX/actordb

## Contents

The main file is called `paper.tex`.
It contains the preamble and document setup stuff.
Content of the paper is structured in the file `paper_toc.tex`.
Each `section` should live in its own file in the folder `sections`.

All kind of pictures should be saved in the folder `pictures`.

We use the LaTeX class for submission to _Lecture Notes in Informatics_ (LNI) from their
[Github repo](https://github.com/gi-ev/LNI).
The required files are can be found in folder `lni-tex`.

The style files required for bibliography style _LNI_ are located in the root folder.
This is required like that by biblatex.
We use the _LNI_ style from [gi-ev/biblatex-lni](https://github.com/gi-ev/biblatex-lni).

## Build

This repository uses [Travis](https://travis-ci.com/) to build the resulting LaTeX PDF.
The PDF is built only for the branches `master`, `ci-*` and `ci/*` and pushed back to this repository via a commit by Travis.

Please be aware that every _push_ to the `master`-branch will trigger a build of the PDF and the corresponding commit by Travis.
This will force you to re-sync your local repository's master branch (`git pull`) before you can push again.
