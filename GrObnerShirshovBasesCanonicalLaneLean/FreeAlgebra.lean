import GrObnerShirshovBasesCanonicalLaneLean.MonomialOrder

/-!
# Free Algebra Package
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure Alphabet where
  generators : List ℕ

def monoidWords (A : Alphabet) : List ℕ := A.generators

structure FreeMonoid (A : Alphabet) where
  word : List A.generators

def length {A : Alphabet} (w : FreeMonoid A) : ℕ := w.word.length

structure FreeAlgebra (A : Alphabet) (K : Type) [Semiring K] where
  support : Finset (FreeMonoid A)
  coefficient : FreeMonoid A → K

theorem free_algebra_support_finite {A : Alphabet} {K : Type} [Semiring K] (f : FreeAlgebra A K) : f.support.Finite := by
  exact Finset.finite_toSet _

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse