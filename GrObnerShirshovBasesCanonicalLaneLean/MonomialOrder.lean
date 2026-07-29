import GrObnerShirshovBasesCanonicalLaneLean.FreeAlgebra

/-!
# Monomial Order Package
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure MonomialOrder (A : Alphabet) where
  is_total : ∀ w1 w2 : FreeMonoid A, Compare w1 w2
  is_transitive : ∀ w1 w2 w3 : FreeMonoid A, Compare w1 w2 → Compare w2 w3 → Compare w1 w3
  is_well_ordered : (Set.range (λ (w : FreeMonoid A) => w)) → WellFounded (· < ·)
  respects_multiplication : ∀ a b c d : FreeMonoid A, Compare a b → Compare (a * c) (b * d)

inductive Compare (A : Alphabet) : FreeMonoid A → FreeMonoid A → Prop where
| lt : Compare lt
| eq : Compare eq
| gt : Compare gt

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse