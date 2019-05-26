# actordb-paper [![Build Status](https://travis-ci.com/CodeLionX/actordb-paper.svg?token=pqFUU2qudhkNenBcNwxf&branch=master)](https://travis-ci.com/CodeLionX/actordb-paper)
Paper about https://github.com/CodeLionX/actordb

**The version of this paper for submission to
[BTW 2019 _Studierendenprogramm_](https://btw.informatik.uni-rostock.de/index.php/de/calls/studierendenprogramm)
resides in the [`btw`-branch](https://github.com/CodeLionX/actordb-paper/tree/btw).**

## Paper versions

The **unpublished** PDF versions of the paper are included in this repository and can be downloaded directly from Github using the following links:

- [unrefined technical full-length version (20 pages)](https://github.com/CodeLionX/actordb-paper/blob/master/ActorDB.pdf)
- [revised and submitted version (10 pages)](https://github.com/CodeLionX/actordb-paper/blob/btw/ActorDB.pdf)

If you want to download the **published version** of this paper, you can do so from my personal website or from GI's digital library:

- [direct download published paper](https://sebastianschmidl.de/assets/LNI-BTW2019-ActorDB.pdf)
- [GI Digital Library](https://dl.gi.de/handle/20.500.12116/21810) (resolved from `doi:10.18420/btw2019-ws-23`)

### Citing this paper

You can cite this paper with:

> Schmidl, S., Schneider, F. & Papenbrock, T., (2019). An Actor Database System for Akka. In: Meyer, H., Ritter, N., Thor, A., Nicklas, D., Heuer, A. & Klettke, M. (Hrsg.), BTW 2019 – Workshopband. Gesellschaft für Informatik, Bonn. (S. 225-234).

or using BibTeX:

```bibtex
@inproceedings{mci/Schmidl2019,
  author = {Schmidl, Sebastian AND Schneider, Frederic AND Papenbrock, Thorsten},
  title = {An Actor Database System for Akka},
  booktitle = {BTW 2019 – Workshopband},
  year = {2019},
  editor = {Meyer, Holger AND Ritter, Norbert AND Thor, Andreas AND Nicklas, Daniela AND Heuer, Andreas AND Klettke, Meike} ,
  pages = { 225-234 },
  publisher = {Gesellschaft für Informatik, Bonn}
}
```

## Abstract

System architectures for data-centric applications are commonly comprised of two tiers:
An application tier and a data tier.
The fact that these tiers do not typically share a common format for data is referred to as object-relational impedance mismatch.
To mitigate this, we develop an actor database system that enables the implementation of application logic into the data storage runtime.
The actor model also allows for easy distribution of both data and computation across multiple nodes in a cluster.
More specifically, we propose the concept of domain actors that provide a type-safe, SQL-like interface to develop the actors of our database system
and the concept of Functors to build queries retrieving data contained in multiple actor instances.
Our experiments demonstrate the feasibility of encapsulating data into domain actors by evaluating their memory overhead and performance.
We also discuss how our proposed actor database system framework solves some of the challenges that arise from the design of distributed databases such as data partitioning, failure handling, and concurrent query processing.

## Repository Contents

The main file is called `paper.tex`.
It contains the preamble and document setup stuff.
Content of the paper is structured in the file `paper_toc.tex`.
Each `section` should live in its own file in the folder `sections`.

All kind of pictures should be saved in the folder `pictures`.

We use the LaTeX class for submission to _Lecture Notes in Informatics_ (LNI) from their
[Github repo](https://github.com/gi-ev/LNI).
The required files can be found in folder `lni-tex`.

The style files required for bibliography style _LNI_ are located in the root folder.
This is required like that by biblatex.
We use the _LNI_ style from [gi-ev/biblatex-lni](https://github.com/gi-ev/biblatex-lni).

## Build

This repository uses [Travis](https://travis-ci.com/) to build the resulting LaTeX PDF.
The PDF is built only for the branches `master`, `btw`, `ci-*` and `ci/*` and pushed back to this repository via a commit by Travis.

Please be aware that every _push_ to the `master` or the `btw`-branch will trigger a build of the PDF and the corresponding commit by Travis.
This will force you to re-sync your local repository's master branch (`git pull`) before you can push again.

### Use Travis to generate a current snapshot PDF

You can instruct Travis CI to build the current version of the PDF and push it back to your branch via putting `[build pdf]` in your commit message.
This is independent from the branch-dependent build-rules and works in every branch.
