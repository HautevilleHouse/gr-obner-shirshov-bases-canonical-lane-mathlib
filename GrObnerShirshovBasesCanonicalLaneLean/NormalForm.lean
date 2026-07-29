import canonicalLaneMathlib.AdmissibleClass
import GrObnerShirshovBasesCanonicalLaneLean.RewriteSystem

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure NormalForm where
  element : GSMonomial
  irreducible : Prop
  uniqueUpToOrder : Prop

structure NormalFormComputation (R : RewriteSystem) where
  normalFormFunction : GSMonomial → NormalForm
  reductionSequenceFinite : Prop
  stability : ∀ (m : GSMonomial), (normalFormFunction m).irreducible

structure NormalFormEvidence (R : RewriteSystem)
    (N : NormalFormComputation R) where
  reductionSequenceFiniteClosed : N.reductionSequenceFinite
  stabilityClosed : ∀ (m : GSMonomial), (N.normalFormFunction m).irreducible

def NormalFormClosed (R : RewriteSystem) (N : NormalFormComputation R) : Prop :=
  N.reductionSequenceFinite ∧ ∀ (m : GSMonomial), (N.normalFormFunction m).irreducible

theorem normal_form_closed_from_evidence (R : RewriteSystem)
    (N : NormalFormComputation R) (E : NormalFormEvidence R N) :
    NormalFormClosed R N := by
  exact And.intro E.reductionSequenceFiniteClosed E.stabilityClosed

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse