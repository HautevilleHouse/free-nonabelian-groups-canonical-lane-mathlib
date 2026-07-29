import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure FreeGroupObject where
  alphabet : Type u
  generators : List alphabet
  reducedWords : Type v
  multiplication : reducedWords → reducedWords → reducedWords
  identity : reducedWords
  inverses : reducedWords → reducedWords

structure AdmittedFreeGroupObject where
  freeGroup : FreeGroupObject
  rank : ℕ
  presentation : Prop
  conclusion : presentation

structure AdmissibleClass where
  object : AdmittedFreeGroupObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FreeGroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse