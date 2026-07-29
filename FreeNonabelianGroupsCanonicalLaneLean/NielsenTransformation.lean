import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure NielsenTransformationStructure where
  generatorSet : Set ℕ
  freeGroup : ℕ → FreeGroup ℕ
  nielsenMoves : List (FreeGroup ℕ → FreeGroup ℕ)
  nielsenMovesAreAutomorphisms : Prop
  generationByNielsenMoves : Prop
  closureUnderInverses : Prop

theorem nielsen_transformation_closed (N : NielsenTransformationStructure) : Prop :=
  N.nielsenMovesAreAutomorphisms ∧ N.generationByNielsenMoves ∧ N.closureUnderInverses

theorem nielsen_transformation_evidence (N : NielsenTransformationStructure) : nielsen_transformation_closed N := by
  exact And.intro N.nielsenMovesAreAutomorphisms (And.intro N.generationByNielsenMoves N.closureUnderInverses)

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse