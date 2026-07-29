import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure FreeGroupObject where
  generators : Type
  wordEquivalence : Prop

structure FreeNonabelianAdmittedObject where
  freeGroup : FreeGroupObject
  nonabelian : Prop
  conclusion : nonabelian

structure AdmissibleClass where
  object : FreeNonabelianAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse