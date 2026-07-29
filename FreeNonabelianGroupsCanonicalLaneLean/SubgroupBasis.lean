import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure SubgroupBasisPackage where
  freeGroup : Type u
  basis : Subgroup (FreeGroup ℕ) → Prop
  basisIsBasis : ∀ (H : Subgroup (FreeGroup ℕ)), basis H → IsBasis (Subgroup.toSet H)
  basisClosed : Prop

theorem subgroup_basis_closed (S : SubgroupBasisPackage) : S.basisClosed := S.basisClosed

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse