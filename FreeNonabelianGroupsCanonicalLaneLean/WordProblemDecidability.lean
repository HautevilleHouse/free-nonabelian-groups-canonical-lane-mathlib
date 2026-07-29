import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeNonabelianGroupsCanonicalLaneLean

structure WordProblemSolver (α : Type u) where
  alphabet : FreeGroupAlphabet α
  decideEquality : ReducedWord α → ReducedWord α → Bool
  correctness : ∀ (w1 w2 : ReducedWord α), decideEquality w1 w2 = true ↔
    (∃ (h : ReducedWordsPackage α), w1 = w2)  

structure WordProblemDecidability (α : Type u) where
  solverAvailable : WordProblemSolver α
  equivalenceDecidable : DecidableEq (ReducedWord α)

structure WordProblemEvidence (α : Type u) (D : WordProblemDecidability α) where
  solverAvailableClosed : D.solverAvailable.correctness
  equivalenceDecidableClosed : D.equivalenceDecidable

def WordProblemDecidableClosed (α : Type u) (D : WordProblemDecidability α) : Prop :=
  D.solverAvailable.correctness ∧ D.equivalenceDecidable

theorem word_problem_decidable_closed_from_evidence (α : Type u)
    (D : WordProblemDecidability α) (E : WordProblemEvidence α D) :
    WordProblemDecidableClosed α D :=
  And.intro E.solverAvailableClosed E.equivalenceDecidableClosed

end FreeNonabelianGroupsCanonicalLaneLean
end HautevilleHouse