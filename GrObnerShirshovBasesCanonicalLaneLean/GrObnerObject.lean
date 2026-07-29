import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure GrObnerObject where
  alphabet : Type
  setOfRelations : Set (List (α × α))  -- placeholders; actual content depends"]
  reducednessCondition : Prop
  completionWitnessed : Prop
  conclusion : completionWitnessed

def GrObnerWitnessClosed (O : GrObnerObject) : Prop :=
  O.completionWitnessed

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse