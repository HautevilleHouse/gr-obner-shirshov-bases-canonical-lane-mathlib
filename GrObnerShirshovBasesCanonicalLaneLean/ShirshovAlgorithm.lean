import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure ShirshovAlgorithm (A : FreeLieAlgebra ℕ) where
  initialBasis : List A
  closureSteps : ℕ
  completed : Prop
  convergenceGuarantee : Prop

structure ShirshovAlgorithmEvidence (A : FreeLieAlgebra ℕ) (S : ShirshovAlgorithm A) where
  initialBasisClosed : S.initialBasis ≠ []
  closureStepsClosed : S.closureSteps > 0
  completedClosed : S.completed
  convergenceGuaranteeClosed : S.convergenceGuarantee

def ShirshovAlgorithmClosed (A : FreeLieAlgebra ℕ) (S : ShirshovAlgorithm A) : Prop :=
  S.completed ∧ S.convergenceGuarantee

theorem shirshov_algorithm_closed_from_evidence
    (A : FreeLieAlgebra ℕ) (S : ShirshovAlgorithm A) (E : ShirshovAlgorithmEvidence A S) :
    ShirshovAlgorithmClosed A S := by
  exact And.intro E.completedClosed E.convergenceGuaranteeClosed

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse
