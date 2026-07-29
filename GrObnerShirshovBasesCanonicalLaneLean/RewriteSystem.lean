import canonicalLaneMathlib.AdmissibleClass
import GrObnerShirshovBasesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure RewriteRule where
  left : GSMonomial
  right : GSMonomial
  compatibility : Prop

structure RewriteSystem where
  alphabet : Type
  rules : List RewriteRule
  confluent : Prop
  terminating : Prop
  normalFormsUnique : Prop

structure RewriteSystemEvidence (R : RewriteSystem) where
  confluentClosed : R.confluent
  terminatingClosed : R.terminating
  normalFormsUniqueClosed : R.normalFormsUnique

def RewriteSystemClosed (R : RewriteSystem) : Prop :=
  R.confluent ∧ R.terminating ∧ R.normalFormsUnique

theorem rewrite_system_closed_from_evidence (R : RewriteSystem)
    (E : RewriteSystemEvidence R) : RewriteSystemClosed R := by
  exact And.intro E.confluentClosed
    (And.intro E.terminatingClosed E.normalFormsUniqueClosed)

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse