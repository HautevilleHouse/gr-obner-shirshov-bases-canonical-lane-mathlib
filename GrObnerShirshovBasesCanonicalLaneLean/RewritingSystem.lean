import GrObnerShirshovBasesCanonicalLaneLean.FreeAlgebra

/-!
# Rewriting System Package
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure RewritingRule (A : Alphabet) where
  lhs : FreeMonoid A
  rhs : FreeMonoid A
  condition : lhs ≠ rhs
data RewritingRules (A : Alphabet) : Type where
| cons (r : RewritingRule A) (rs : RewritingRules A)
| nil

structure ReductionSystem (A : Alphabet) (R : RewritingRules A) where
  reduce : FreeMonoid A → FreeMonoid A
  reductionStep : ∀ w : FreeMonoid A, reduce w ≠ w → ∃ (r : RewritingRule A), r ∈ R ∧ w = r.lhs
  termination : WellFounded (λ (u v : FreeMonoid A) => reduce u = v ∧ u ≠ v)

def normalForm {A : Alphabet} {R : RewritingRules A} (S : ReductionSystem A R) (w : FreeMonoid A) : FreeMonoid A :=
  S.reduce w

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse