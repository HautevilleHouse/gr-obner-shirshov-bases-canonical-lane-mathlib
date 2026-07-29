import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure RewritingRule (A : FreeLieAlgebra ℕ) where
  left : A
  right : A
  property : left ≠ right

structure WordReductionSystem (A : FreeLieAlgebra ℕ) where
  rules : List (RewritingRule A)
  confluent : Prop
  terminating : Prop
  normalForms : A → A

structure WordReductionSystemEvidence (A : FreeLieAlgebra ℕ) (W : WordReductionSystem A) where
  confluentClosed : W.confluent
  terminatingClosed : W.terminating

def WordReductionSystemClosed (A : FreeLieAlgebra ℕ) (W : WordReductionSystem A) : Prop :=
  W.confluent ∧ W.terminating

theorem word_reduction_system_closed_from_evidence
    (A : FreeLieAlgebra ℕ) (W : WordReductionSystem A) (E : WordReductionSystemEvidence A W) :
    WordReductionSystemClosed A W := by
  exact And.intro E.confluentClosed E.terminatingClosed

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse
