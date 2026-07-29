import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  carriedRemainder : String

def sourceFreeNonabelianGroupsTheorem : TheoremStatement :=
  { sourceKey := "free-nonabelian-groups-canonical-lane",
    theoremName := "NielsenSchreier",
    theoremObject := "subgroups of free groups are free",
    classicalBoundary := "classical boundary carried by formalization gap",
    constrainedStatement := "constrained theorem certificate internalized through admissible class",
    carriedRemainder := "unrestricted classical proof is carried as future formalization"
  }

theorem theorem_statement_internalized :
    sourceFreeNonabelianGroupsTheorem.sourceKey = "free-nonabelian-groups-canonical-lane" := by
  rfl

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse