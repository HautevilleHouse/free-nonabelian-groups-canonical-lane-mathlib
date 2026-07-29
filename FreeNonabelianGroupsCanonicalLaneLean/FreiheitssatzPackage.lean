import FreeNonabelianGroupsCanonicalLaneLean.FreeNonabelianGroupsAdmissibleClass

/-!
# Freiheitssatz (Freedom Theorem) Package
-/

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure FreiheitssatzPackage {G : FreeNonabelianGroup} where
  relator : G.word  -- word in generators representing the relator
  cyclicallyReduced : Prop
  oneRelatorGroup : Prop
  subgroupFree : Prop
  freeGenerators : List (G.generators × Bool)

structure FreiheitssatzEvidence {G : FreeNonabelianGroup} (F : FreiheitssatzPackage G) where
  cyclicallyReducedClosed : F.cyclicallyReduced
  oneRelatorGroupClosed : F.oneRelatorGroup
  subgroupFreeClosed : F.subgroupFree

def FreiheitssatzClosed {G : FreeNonabelianGroup} (F : FreiheitssatzPackage G) : Prop :=
  F.cyclicallyReduced ∧ F.oneRelatorGroup ∧ F.subgroupFree

theorem freiheitssatz_closed_from_evidence
    {G : FreeNonabelianGroup} (F : FreiheitssatzPackage G)
    (E : FreiheitssatzEvidence F) : FreiheitssatzClosed F := by
  exact And.intro E.cyclicallyReducedClosed
    (And.intro E.oneRelatorGroupClosed E.subgroupFreeClosed)

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse