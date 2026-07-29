import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure ReducedWord (α : Type u) where
  letters : List α
  freelyReduced : ¬∃ (i : ℕ) (h : i < letters.length - 1), letters.get ⟨i, h⟩ = letters.get ⟨i+1, by omega⟩

structure ReducedWordsPackage (α : Type u) where
  alphabet : FreeGroupAlphabet α
  words : List (ReducedWord α)
  emptyWord : ReducedWord α
  concatenationClosure : Prop
  reductionProcedureExists : Prop

structure ReducedWordsEvidence (α : Type u) (P : ReducedWordsPackage α) where
  concatenationClosureClosed : P.concatenationClosure
  reductionProcedureExistsClosed : P.reductionProcedureExists

def ReducedWordsClosed (α : Type u) (P : ReducedWordsPackage α) : Prop :=
  P.concatenationClosure ∧ P.reductionProcedureExists

theorem reduced_words_closed_from_evidence (α : Type u) (P : ReducedWordsPackage α)
    (E : ReducedWordsEvidence α P) : ReducedWordsClosed α P :=
  And.intro E.concatenationClosureClosed E.reductionProcedureExistsClosed

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse