import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeNonabelianGroupsCanonicalLaneLean.FreeGroupPresentation

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure SubgroupBasis (F : Type u) [Group F] where
  subgroup : Subgroup F
  freeRank : ℕ
  basis : FreeGroupPresentation (Fin freeRank)
  homomorphism : FreeGroup (Fin freeRank) →* F
  imageIsSubgroup : homomorphism.range = subgroup
  injectivity : Function.Injective homomorphism

structure SubgroupBasisEvidence {F : Type u} [Group F] (S : SubgroupBasis F) where
  imageIsSubgroupClosed : S.imageIsSubgroup
  injectivityClosed : S.injectivity

def SubgroupBasisClosed {F : Type u} [Group F] (S : SubgroupBasis F) : Prop :=
  S.imageIsSubgroup ∧ S.injectivity

theorem subgroup_basis_closed_from_evidence
    {F : Type u} [Group F] (S : SubgroupBasis F) (E : SubgroupBasisEvidence S) :
    SubgroupBasisClosed S := by
  exact And.intro E.imageIsSubgroupClosed E.injectivityClosed

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse
