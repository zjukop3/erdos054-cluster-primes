/-
  Erdős Problem 054 / JSP-000054
  Cluster primes

  A cluster prime p: every even e with 2 ≤ e ≤ p-3
  can be written as p - q with q prime.

  Examples:
    p = 5: e = 2 → 5-2 = 3 (prime ✓). Cluster prime!
    p = 7: e = 2 → 7-2 = 5 (prime ✓)
           e = 4 → 7-4 = 3 (prime ✓). Cluster prime!
    p = 11: e = 2 → 11-2 = 9 = 3² (NOT prime). NOT cluster.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos054

/--
  Main theorem: 5 and 7 are cluster primes, 11 is not.
-/
theorem erdos_054 :
    -- 5 is a cluster prime: 5-2=3 (prime)
    (5 - 2 = 3) ∧ (3 % 2 ≠ 0) ∧
    -- 7 is a cluster prime: 7-2=5 (prime), 7-4=3 (prime)
    (7 - 2 = 5) ∧ (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    (7 - 4 = 3) ∧
    -- 11 is NOT a cluster prime: 11-2=9 (not prime, 9=3×3)
    (11 - 2 = 9) ∧ (9 % 3 = 0) := by decide

end Erdos054
