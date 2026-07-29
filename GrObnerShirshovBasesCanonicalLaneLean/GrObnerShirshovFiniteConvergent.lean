import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

/-!
# Finite Convergent Rewriting Package
-/

structure FiniteConvergentPackage where
  monoidPresentation : Type u
  generators : Type v
  relations : Type w
  finiteBasis : Prop
  convergentSystem : Prop
  wordProblemDecidable : Prop
  grObnerShirshovBasis : Prop

structure FiniteConvergentEvidence (F : FiniteConvergentPackage) where
  finiteBasisClosed : F.finiteBasis
  convergentSystemClosed : F.convergentSystem
  wordProblemDecidableClosed : F.wordProblemDecidable
  grObnerShirshovBasisClosed : F.grObnerShirshovBasis

def FiniteConvergentClosed (F : FiniteConvergentPackage) : Prop :=
  F.finiteBasis ∧ F.convergentSystem ∧
  F.wordProblemDecidable ∧ F.grObnerShirshovBasis

theorem finite_convergent_closed_from_evidence (F : FiniteConvergentPackage)
    (E : FiniteConvergentEvidence F) : FiniteConvergentClosed F := by
  exact And.intro E.finiteBasisClosed
    (And.intro E.convergentSystemClosed
      (And.intro E.wordProblemDecidableClosed E.grObnerShirshovBasisClosed))

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse