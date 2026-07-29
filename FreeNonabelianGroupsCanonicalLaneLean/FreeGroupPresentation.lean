import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure FreeGroupPresentation (A : Type u) where
  generators : List A
  relations : List (List A × List A)
  reducedForm : List A → List A
  reducedFormIdempotent : ∀ (w : List A), reducedForm (reducedForm w) = reducedForm w
  reducedFormCorrect : ∀ (w : List A), reducedForm w = w ↔ w ∉ relations

structure FreeGroupPresentationEvidence {A : Type u} (P : FreeGroupPresentation A) where
  reducedFormIdempotentClosed : P.reducedFormIdempotent
  reducedFormCorrectClosed : P.reducedFormCorrect

def FreeGroupPresentationClosed {A : Type u} (P : FreeGroupPresentation A) : Prop :=
  P.reducedFormIdempotent ∧ P.reducedFormCorrect

theorem free_group_presentation_closed_from_evidence
    {A : Type u} (P : FreeGroupPresentation A) (E : FreeGroupPresentationEvidence P) :
    FreeGroupPresentationClosed P := by
  exact And.intro E.reducedFormIdempotentClosed E.reducedFormCorrectClosed

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse
