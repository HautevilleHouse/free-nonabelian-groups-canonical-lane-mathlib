import FreeNonabelianGroupsCanonicalLaneLean.FreeNonabelianGroupsAdmissibleClass

/-!
# Nielsen-Schreier Subgroup Package
-/

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure NielsenSchreierPackage {G : FreeNonabelianGroup} where
  subgroup : FreeNonabelianGroup
  subgroupGenerators : List (G.generators × Bool)
  schreierTransversal : Prop
  reidemeisterSchreier : Prop
  indexFinite : Prop

structure NielsenSchreierEvidence {G : FreeNonabelianGroup} (N : NielsenSchreierPackage G) where
  schreierTransversalClosed : N.schreierTransversal
  reidemeisterSchreierClosed : N.reidemeisterSchreier
  indexFiniteClosed : N.indexFinite

def NielsenSchreierClosed {G : FreeNonabelianGroup} (N : NielsenSchreierPackage G) : Prop :=
  N.schreierTransversal ∧ N.reidemeisterSchreier ∧ N.indexFinite

theorem nielsen_schreier_closed_from_evidence
    {G : FreeNonabelianGroup} (N : NielsenSchreierPackage G)
    (E : NielsenSchreierEvidence N) : NielsenSchreierClosed N := by
  exact And.intro E.schreierTransversalClosed
    (And.intro E.reidemeisterSchreierClosed E.indexFiniteClosed)

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse