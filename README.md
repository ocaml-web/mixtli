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

