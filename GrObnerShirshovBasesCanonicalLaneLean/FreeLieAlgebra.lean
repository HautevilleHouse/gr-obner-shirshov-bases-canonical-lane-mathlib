import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure FreeLieAlgebra (X : Type) where
  generators : Set X
  bracket : X → X → X
  anticommutativity : ∀ x y : X, bracket x y = - bracket y x
  jacobiIdentity : ∀ x y z : X, bracket (bracket x y) z + bracket (bracket y z) x + bracket (bracket z x) y = 0

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse
