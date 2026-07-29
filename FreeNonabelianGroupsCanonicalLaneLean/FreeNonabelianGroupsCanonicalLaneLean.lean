import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

def ConstrainedFreeNonabelianGroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_nonabelian_groups_endgame (A : AdmissibleClass) :
    ConstrainedFreeNonabelianGroupsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse