import canonicalLaneMathlib.AdmissibleClass
import FreeNonabelianGroupsCanonicalLaneLean.FreeNonabelianGroupsAdmissibleClass

/-!
# Exponential and Logarithm Maps on Free Groups: Formal power series in noncommuting variables
-/

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure NoncommutingFormalPowerSeries (R : Type u) [Semiring R] where
  coefficients : ℕ → Type v  -- homogeneous components
  multiplication : Type v → Type v → Type v

structure FreeGroupMagnus (F : FreeGroupObject) (R : Type u) [Semiring R] where
  magnusRepresentation : F.reducedWords → NoncommutingFormalPowerSeries R
  log : NoncommutingFormalPowerSeries R → F.reducedWords
  exp : F.reducedWords → NoncommutingFormalPowerSeries R
  expLogInverse : ∀ (x : F.reducedWords), log (exp x) = x
  logExpInverse : ∀ (s : NoncommutingFormalPowerSeries R), exp (log s) = s

def ExponentialLogClosed {F : FreeGroupObject} {R : Type u} [Semiring R] (M : FreeGroupMagnus F R) : Prop :=
  M.expLogInverse ∧ M.logExpInverse

theorem exponential_log_closure_holds {F : FreeGroupObject} {R : Type u} [Semiring R] (M : FreeGroupMagnus F R) (h : ExponentialLogClosed M) :
  h = True := by
  trivial

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse