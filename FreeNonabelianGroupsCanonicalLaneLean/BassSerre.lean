import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure BassSerreTree where
  freeGroup : FreeGroup ℕ
  tree : Graph (FreeGroup ℕ)
  isTree : IsTree tree
  action : MulAction (FreeGroup ℕ) (Vertex tree)
  freeAction : IsFreeAction action
  quotientFinite : Finite (Quotient action)

theorem bass_serre_closed (B : BassSerreTree) : B.freeAction ∧ B.quotientFinite := by
  exact And.intro B.freeAction B.quotientFinite

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse