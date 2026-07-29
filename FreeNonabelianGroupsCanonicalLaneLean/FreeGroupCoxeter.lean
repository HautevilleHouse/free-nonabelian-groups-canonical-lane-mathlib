import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure CoxeterSystem (S : Type u) where
  generators : List S
  relations : List (List (S × ℕ))
  presentation : FreeGroupPresentation S
  coxeterMatrix : S → S → ℕ
  dihedralRelation : ∀ (s t : S), (s • t) ^ (coxeterMatrix s t) = 1

structure CoxeterSystemEvidence {S : Type u} (C : CoxeterSystem S) where
  dihedralRelationClosed : C.dihedralRelation

def CoxeterSystemClosed {S : Type u} (C : CoxeterSystem S) : Prop :=
  C.dihedralRelation

theorem coxeter_system_closed_from_evidence
    {S : Type u} (C : CoxeterSystem S) (E : CoxeterSystemEvidence C) :
    CoxeterSystemClosed C := by
  exact E.dihedralRelationClosed

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse
