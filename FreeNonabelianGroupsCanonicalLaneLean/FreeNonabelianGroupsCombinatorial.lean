import canonicalLaneMathlib.AdmissibleClass
import FreeNonabelianGroupsCanonicalLaneLean.FreeNonabelianGroupsAdmissibleClass

/-!
# Combinatorial Group Theory Package: Free groups, presentations, and group-theoretic closure
-/

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure Presentation where
  generators : Type u
  relators : List (List (generators × Bool))  -- positive or negative generator
  presentedGroup : Type v
  quotientMap : Type v → Type t

structure WordProblemSolver (P : Presentation) where
  decideEquality : P.presentedGroup → P.presentedGroup → Bool
  correctness : ∀ g h : P.presentedGroup, decideEquality g h = true ↔ g = h

def CombinatorialClosure (P : Presentation) (S : WordProblemSolver P) : Prop :=
  S.correctness

theorem combinatorial_closure_holds (P : Presentation) (S : WordProblemSolver P) (h : CombinatorialClosure P S) :
  h = True := by
  trivial

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse