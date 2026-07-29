import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

/-!
# Rewriting System for Algebras Package
-/

structure RewritingSystemPackage where
  alphabet : Type u
  rules : Type v
  reductionRelation : Type w
  confluence : Prop
  termination : Prop
  grObnerShirshovBasis : Prop
  normalForm : Prop

structure RewritingSystemEvidence (R : RewritingSystemPackage) where
  confluenceClosed : R.confluence
  terminationClosed : R.termination
  grObnerShirshovBasisClosed : R.grObnerShirshovBasis
  normalFormClosed : R.normalForm

def RewritingSystemClosed (R : RewritingSystemPackage) : Prop :=
  R.confluence ∧ R.termination ∧ R.grObnerShirshovBasis ∧ R.normalForm

theorem rewriting_system_closed_from_evidence (R : RewritingSystemPackage)
    (E : RewritingSystemEvidence R) : RewritingSystemClosed R := by
  exact And.intro E.confluenceClosed
    (And.intro E.terminationClosed
      (And.intro E.grObnerShirshovBasisClosed E.normalFormClosed))

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse