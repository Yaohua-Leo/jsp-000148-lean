# jsp-000148-lean

Lean formalization observation for **JSP-000148** of the
[TheJustinSunPrize/awards](https://github.com/TheJustinSunPrize/awards) catalog:

> JSP-000148 · "How many representations of one are there as a sum of a
> prescribed number of distinct positive unit fractions?" (Number theory /
> Unit fractions; status: Open)

## What is formalized

All statements are fully machine-checked in Lean 4 with Mathlib; there is no
`sorry`, `admit`, `native_decide`, or unproved assumption anywhere in this
repository.

* `jsp000148_k3` — `1 = 1/2 + 1/3 + 1/6`: one three-term representation of 1
  by distinct positive unit fractions.
* `jsp000148_k4a` — `1 = 1/2 + 1/3 + 1/8 + 1/24`: a first four-term
  representation.
* `jsp000148_k4b` — `1 = 1/2 + 1/4 + 1/6 + 1/12`: a second four-term
  representation.
* `jsp000148` — there exist at least two distinct representations of 1 as a
  sum of four distinct positive unit fractions (witnesses `{2, 3, 8, 24}` and
  `{2, 4, 6, 12}`: distinct four-element sets of integers greater than 1 whose
  reciprocal sums both equal 1).

## Honest scope statement

The original problem JSP-000148 asks *how many* representations of 1 exist as
a sum of a prescribed number of distinct positive unit fractions. It remains
**open**. This repository only establishes a lower-bound observation: one
concrete three-term representation, and two distinct concrete four-term
representations (so the number of four-term representations is ≥ 2). It does
**not** determine the exact number of representations for any prescribed
number of terms, does not study growth of these counts, and does not resolve
the open problem. No award is claimed.

## Attribution

* Formalization author: **Yaohua-Leo** (AI-assisted via ZCode (GLM)).
* Mathematical content: classical elementary facts about unit fractions;
  mathematical credit belongs to the number-theory community / original
  proposers of the problem.

## Toolchain

* Lean: `leanprover/lean4:v4.35.0-rc2`
* Mathlib: `v4.35.0-rc2` (dependency pinned via `lakefile.toml` /
  `lake-manifest.json`)

## Build and verify

```sh
lake build                 # full build
lake env lean JSP000148.lean   # re-check the file; no output = success
```

## Axiom audit

`#print axioms` at the end of `JSP000148.lean` gives:

```
'jsp000148_k3' depends on axioms: [propext, Classical.choice, Quot.sound]
'jsp000148_k4a' depends on axioms: [propext, Classical.choice, Quot.sound]
'jsp000148_k4b' depends on axioms: [propext, Classical.choice, Quot.sound]
'jsp000148' depends on axioms: [propext, Classical.choice, Quot.sound]
```

All of these are the standard, trusted Lean axioms; nothing beyond them is
used.
