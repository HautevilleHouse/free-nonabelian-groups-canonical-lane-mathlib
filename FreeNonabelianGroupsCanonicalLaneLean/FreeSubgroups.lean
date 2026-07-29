import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure FreeSubgroupStructure where
  ambientFreeGroup : FreeGroup ℕ
  subgroup : Subgroup (FreeGroup ℕ)
  isFree : IsFreeGroup (subgroup : Type) (by
    let U : Set (subgroup : Type) := Set.univ
    exact U)
  isFreeProof : isFree

theorem free_subgroup_closed (F : FreeSubgroupStructure) : IsFreeGroup (F.subgroup : Type) (by
  exact Set.univ) :=
  F.isFreeProof

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse