import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

/-!
# Word Problem Solvability Package
-/

structure WordProblemPackage where
  monoidPresentation : Type u
  generators : Type v
  relations : Type w
  wordProblemDecidable : Prop
  grObnerShirshovBasis : Prop
  normalFormAlgorithm : Prop

structure WordProblemEvidence (W : WordProblemPackage) where
  wordProblemDecidableClosed : W.wordProblemDecidable
  grObnerShirshovBasisClosed : W.grObnerShirshovBasis
  normalFormAlgorithmClosed : W.normalFormAlgorithm

def WordProblemClosed (W : WordProblemPackage) : Prop :=
  W.wordProblemDecidable ∧ W.grObnerShirshovBasis ∧ W.normalFormAlgorithm

theorem word_problem_closed_from_evidence (W : WordProblemPackage) (E : WordProblemEvidence W) :
    WordProblemClosed W := by
  exact And.intro E.wordProblemDecidableClosed
    (And.intro E.grObnerShirshovBasisClosed E.normalFormAlgorithmClosed)

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse