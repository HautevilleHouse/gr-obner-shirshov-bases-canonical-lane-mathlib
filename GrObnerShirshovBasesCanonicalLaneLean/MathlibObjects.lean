import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.MonoidAlgebra.Basic

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure GSMonomial where
  coefficient : Type
  exponent : List Nat
  ordering : Type

def GSWitnessClosed (O : GrObnerShirshovAdmittedObject) : Prop :=
  O.leadTermReduced

structure GrObnerShirshovAdmittedObject where
  algebra : Type
  generators : Type
  relations : List (GSMonomial × GSMonomial)
  leadTermReduced : Prop
  conclusion : leadTermReduced

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse