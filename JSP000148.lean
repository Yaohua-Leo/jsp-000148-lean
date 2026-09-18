/-
JSP-000148 · "How many representations of one are there as a sum of a
prescribed number of distinct positive unit fractions?"

This file contains a Lean formalization observation for JSP-000148
(TheJustinSunPrize/awards).  The original question asks *how many*
representations of 1 exist as a sum of a prescribed number of distinct
positive unit fractions; it remains open.  Here we only record verified
concrete instances:

* one three-term representation:  1 = 1/2 + 1/3 + 1/6;
* two distinct four-term representations:
  1 = 1/2 + 1/3 + 1/8 + 1/24 and 1 = 1/2 + 1/4 + 1/6 + 1/12.

Together the final theorem establishes that the number of four-term
representations of 1 by distinct positive unit fractions is at least 2.
No claim is made about the exact number of representations for any
prescribed number of terms, and no claim is made about the original open
problem.

Scope disclaimer: this is a scoped formalization observation only.  It does
not resolve JSP-000148, and no award is claimed.

Formalization author: Yaohua-Leo (AI-assisted via ZCode (GLM)).
-/

import Mathlib

/-- One three-term representation of 1 by distinct positive unit fractions. -/
theorem jsp000148_k3 : (1 : ℚ) = 1 / 2 + 1 / 3 + 1 / 6 := by norm_num

/-- A first four-term representation of 1 by distinct positive unit fractions. -/
theorem jsp000148_k4a : (1 : ℚ) = 1 / 2 + 1 / 3 + 1 / 8 + 1 / 24 := by norm_num

/-- A second, distinct four-term representation of 1 by distinct positive unit
fractions. -/
theorem jsp000148_k4b : (1 : ℚ) = 1 / 2 + 1 / 4 + 1 / 6 + 1 / 12 := by norm_num

/-- There are at least two distinct representations of 1 as a sum of four
distinct positive unit fractions: the denominators form a finite set of
natural numbers, each greater than 1 (so every summand is a unit fraction),
the two denominator sets are different and each has exactly four elements,
and the rational sums both equal 1. -/
theorem jsp000148 : ∃ (A B : Finset ℕ),
    A ≠ B ∧ A.card = 4 ∧ B.card = 4 ∧
    (∀ x ∈ A, 1 < x) ∧ (∀ x ∈ B, 1 < x) ∧
    (∑ x ∈ A, 1 / (x : ℚ)) = 1 ∧ (∑ x ∈ B, 1 / (x : ℚ)) = 1 :=
  ⟨{2, 3, 8, 24}, {2, 4, 6, 12}, by decide, by decide, by decide, by decide, by decide,
    by norm_num [Finset.sum_insert, Finset.sum_empty],
    by norm_num [Finset.sum_insert, Finset.sum_empty]⟩

#print axioms jsp000148_k3
#print axioms jsp000148_k4a
#print axioms jsp000148_k4b
#print axioms jsp000148
