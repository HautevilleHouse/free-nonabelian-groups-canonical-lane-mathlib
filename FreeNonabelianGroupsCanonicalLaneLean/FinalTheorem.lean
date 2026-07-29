import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeNonabelianGroupsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

def ConstrainedFreeNonabelianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_nonabelian_endgame (A : AdmissibleClass) :
    ConstrainedFreeNonabelianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse
