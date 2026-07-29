import canonicalLaneMathlib.AdmissibleClass
import GrObnerShirshovBasesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure Composition where
  initialTerm : GSMonomial
  secondaryTerm : GSMonomial
  overlappedPart : GSMonomial
  compositionReduced : Prop

def compositionLawful (c : Composition) : Prop :=
  c.compositionReduced

structure ShirshovCompositionSystem where
  alphabet : Type
  relations : List Composition
  closedUnderComposition : Prop
  complete : Prop

structure ShirshovCompositionEvidence (S : ShirshovCompositionSystem) where
  closedUnderCompositionClosed : S.closedUnderComposition
  completeClosed : S.complete

def ShirshovCompositionClosed (S : ShirshovCompositionSystem) : Prop :=
  S.closedUnderComposition ∧ S.complete

theorem shirshov_composition_closed_from_evidence (S : ShirshovCompositionSystem)
    (E : ShirshovCompositionEvidence S) : ShirshovCompositionClosed S := by
  exact And.intro E.closedUnderCompositionClosed E.completeClosed

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse