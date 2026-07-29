import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure CanonicalEmbedding (α β : Type u) where
  sourceFreeGroup : FreeGroupObject α
  targetFreeGroup : FreeGroupObject β
  embedding : sourceFreeGroup.carrier → targetFreeGroup.carrier
  isInjective : Function.Injective embedding
  respectsMultiplication : ∀ (x y : sourceFreeGroup.carrier), embedding (x * y) = embedding x * embedding y

structure CanonicalEmbeddingEvidence (α β : Type u) (E : CanonicalEmbedding α β) where
  isInjectiveClosed : E.isInjective
  respectsMultiplicationClosed : E.respectsMultiplication

def CanonicalEmbeddingClosed (α β : Type u) (E : CanonicalEmbedding α β) : Prop :=
  E.isInjective ∧ E.respectsMultiplication

theorem canonical_embedding_closed_from_evidence (α β : Type u)
    (E : CanonicalEmbedding α β) (Ev : CanonicalEmbeddingEvidence α β E) :
    CanonicalEmbeddingClosed α β E :=
  And.intro Ev.isInjectiveClosed Ev.respectsMultiplicationClosed

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse