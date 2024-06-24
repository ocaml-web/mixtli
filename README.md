# Tutorial: OCaml &ndash; Libraries With Dune

This repository contains the OCaml and Dune source code files illustrating the
tutorial [Libraries With Dune](https://ocaml.org/docs/libraries-dune) at
https://ocaml.org. Commits correspond to the sections of the tutorial.

Here is what you can do to replay this tutorial.
```bash
git checkout -b $USER start
git cherry-pick task-1
# Read section task #1 in README.md
# hack hack hack
git commit -m "my-task-1"
```

And then move on to the next task. You can compare your work on `task-X` with
the proposed solution by doing `git diff sol-X`.

## Task #1: Project Initialization

**Tutorial section**: [Minimum Project
Setup](https://ocaml.org/docs/libraries-dune#minimum-project-setup)

Create files `dune-project`, `dune`, `wmo.ml` and `cloud.ml`.

Check it works: `dune exec nube`

**Takeaways**: Names

* `mixtli` is the folder or git repo name, it is irrelevant to OCaml and Dune
* `wmo-clouds`: package name of the project, used by Opam and Nix
* OCaml source files
  * `cloud.ml` implementation of the `Cloud` module (referred as `cloud` in `dune`)
  * `wmo.ml` implementation of the `Wmo` module
* `nube` executable command name

## Task #2: Library Folder

**Tutorial Section**: [Libraries](https://ocaml.org/docs/libraries-dune#libraries)

Create and populate folder `lib` with file files:
* `lib/dune` module `Wmo`
* `lib/cumulus.mli` and `lib/cumulus.ml`, module `Wmo.Cumulus`
* `lib/status.mli` and `lib/stratus.ml`, module `Wmo.Stratus`

Delete file `wmo.ml`. Add dependency from `cloud` to `Wmo` in `dune`. Running
`dune exec nube` should produce the same output.

**Takeaways**: Dune no longer needs a source code file to build module `Wmo`

## Task #3: Wrapper Module

**Tutorial Section**: [Library Wrapper Modules](https://ocaml.org/docs/libraries-dune#library-wrapper-modules)

Create file `lib/wmo.ml` with _ad-hoc_ contents. Running `dune exec nube` should
produce the same output.

**Takeaways**: In the previous step, everything behaved as if this file existed.
Running `dune exec nube` should produce the same output.

## Task #4: Subdirectory Modules

**Tutorial Section**: [Include Subdirectories](https://ocaml.org/docs/libraries-dune#include-subdirectories)

Use `include_subdirs qualified` in `lib/dune` to create `Cumulus` and `Stratus`
modules from folders rather than files. Running `dune exec nube` should produce
the same output.

**Takeaways**: There are no `dune` files in folders `lib/cumulus` and
`lib/status`, yet `Wmo.Cumulus` and `Wmo.Stratus` modules are built.

