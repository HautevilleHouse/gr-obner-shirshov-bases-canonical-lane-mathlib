import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

/-!
# Gröbner–Shirshov Reduction Package
-/

structure ReductionPackage where
  generators : Type u
  relations : Type v
  leadingMonomial : relations → generators
  normalForm : generators → generators → generators
  confluenceCondition : Prop
  overlapCondition : Prop
  completionTerminates : Prop

structure ReductionEvidence (R : ReductionPackage) where
  confluenceConditionClosed : R.confluenceCondition
  overlapConditionClosed : R.overlapCondition
  completionTerminatesClosed : R.completionTerminates

def ReductionClosed (R : ReductionPackage) : Prop :=
  R.confluenceCondition ∧ R.overlapCondition ∧ R.completionTerminates

theorem reduction_closed_from_evidence (R : ReductionPackage) (E : ReductionEvidence R) :
    ReductionClosed R := by
  exact And.intro E.confluenceConditionClosed
    (And.intro E.overlapConditionClosed E.completionTerminatesClosed)

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse