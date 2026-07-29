import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure GrObnerShirshovBasis (A : FreeLieAlgebra ℕ) (S : ShirshovAlgorithm A) where
  basis : List A
  reduced : Prop
  closedUnderComposition : Prop
  leadingMonomials : Set A

structure GrObnerShirshovBasisEvidence (A : FreeLieAlgebra ℕ) (S : ShirshovAlgorithm A) (B : GrObnerShirshovBasis A S) where
  reducedClosed : B.reduced
  closedUnderCompositionClosed : B.closedUnderComposition

def GrObnerShirshovBasisClosed (A : FreeLieAlgebra ℕ) (S : ShirshovAlgorithm A) (B : GrObnerShirshovBasis A S) : Prop :=
  B.reduced ∧ B.closedUnderComposition

theorem gr_obner_shirshov_basis_closed_from_evidence
    (A : FreeLieAlgebra ℕ) (S : ShirshovAlgorithm A) (B : GrObnerShirshovBasis A S) (E : GrObnerShirshovBasisEvidence A S B) :
    GrObnerShirshovBasisClosed A S B := by
  exact And.intro E.reducedClosed E.closedUnderCompositionClosed

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse
