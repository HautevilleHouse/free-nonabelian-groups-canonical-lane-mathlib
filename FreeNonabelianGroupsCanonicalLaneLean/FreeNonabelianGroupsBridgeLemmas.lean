import canonicalLaneMathlib.AdmissibleClass
import FreeNonabelianGroupsCanonicalLaneLean.FreeNonabelianGroupsAdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FreeGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse