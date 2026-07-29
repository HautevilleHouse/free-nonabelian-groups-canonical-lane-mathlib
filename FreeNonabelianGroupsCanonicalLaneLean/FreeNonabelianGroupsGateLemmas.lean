import canonicalLaneMathlib.AdmissibleClass
import FreeNonabelianGroupsCanonicalLaneLean.FreeNonabelianGroupsBridgeLemmas

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse