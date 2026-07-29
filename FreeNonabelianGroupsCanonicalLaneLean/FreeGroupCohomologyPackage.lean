import FreeNonabelianGroupsCanonicalLaneLean.FreeNonabelianGroupsAdmissibleClass

/-!
# Co/homology Package for Free Groups
-/

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure FreeGroupCohomologyPackage {G : FreeNonabelianGroup} where
  H1 : Type u
  H1rank : Nat
  H1freeAbelian : Prop
  H2trivial : Prop
  groupCohomologyComputed : Prop

structure FreeGroupCohomologyEvidence {G : FreeNonabelianGroup}
    (C : FreeGroupCohomologyPackage G) where
  H1freeAbelianClosed : C.H1freeAbelian
  H2trivialClosed : C.H2trivial
  groupCohomologyComputedClosed : C.groupCohomologyComputed

def FreeGroupCohomologyClosed {G : FreeNonabelianGroup}
    (C : FreeGroupCohomologyPackage G) : Prop :=
  C.H1freeAbelian ∧ C.H2trivial ∧ C.groupCohomologyComputed

theorem free_group_cohomology_closed_from_evidence
    {G : FreeNonabelianGroup} (C : FreeGroupCohomologyPackage G)
    (E : FreeGroupCohomologyEvidence C) : FreeGroupCohomologyClosed C := by
  exact And.intro E.H1freeAbelianClosed
    (And.intro E.H2trivialClosed E.groupCohomologyComputedClosed)

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse