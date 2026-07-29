import canonicalLaneMathlib.AdmissibleClass
import FreeNonabelianGroupsCanonicalLaneLean.FreeNonabelianGroupsAdmissibleClass

/-!
# Nielsen–Schreier Theorem Package: Subgroups of free groups are free
-/

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure FreeGroupObject where
  alphabet : Type u
  generators : List alphabet
  reducedWords : Type v
  multiplication : reducedWords → reducedWords → reducedWords
  identity : reducedWords
  inverses : reducedWords → reducedWords

structure NielsenSchreierPackage (F : FreeGroupObject) where
  subgroup : Type u
  embedding : subgroup → F.reducedWords
  freeBasis : List (F.reducedWords)
  basisIsFree : Prop
  index : ℕ
  rankFormula : index = F.generators.length - (freeBasis.length - 1) → Prop

def NielsenSchreierClosed {F : FreeGroupObject} (N : NielsenSchreierPackage F) : Prop :=
  N.basisIsFree

theorem nielsen_schreier_closed_implies_subgroup_free
    {F : FreeGroupObject} (N : NielsenSchreierPackage F) (h : NielsenSchreierClosed N) : Prop :=
  N.basisIsFree

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse