import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure Composition (A : FreeLieAlgebra ℕ) where
  leftSide : A
  rightSide : A
  overlap : A
  position : ℕ

structure DiamondCondition (A : FreeLieAlgebra ℕ) where
  composition : Composition A
  reduction : A = A
  leadingMonomial : A
  tailReduction : A

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse
