import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure FreeGroupAlphabet (α : Type u) where
  generators : List α
  nonempty : generators ≠ []
  distinctGenerators : List.Pairwise (· ≠ ·) generators

structure FreeGroupAlphabetEvidence (α : Type u) (F : FreeGroupAlphabet α) where
  nonemptyClosed : F.nonempty
  distinctGeneratorsClosed : F.distinctGenerators

def FreeGroupAlphabetClosed (α : Type u) (F : FreeGroupAlphabet α) : Prop :=
  F.nonempty ∧ F.distinctGenerators

theorem free_group_alphabet_closed_from_evidence (α : Type u) (F : FreeGroupAlphabet α)
    (E : FreeGroupAlphabetEvidence α F) : FreeGroupAlphabetClosed α F :=
  And.intro E.nonemptyClosed E.distinctGeneratorsClosed

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse