import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

/-!
# Polycyclic Group Rewriting Package
-/

structure PolycyclicRewritingPackage where
  generators : Type u
  exponents : Type v
  normalForm : Type w
  polycyclicStructure : Prop
  rewritingSystem : Prop
  confluenceCondition : Prop
  grObnerShirshovBasis : Prop

structure PolycyclicRewritingEvidence (P : PolycyclicRewritingPackage) where
  polycyclicStructureClosed : P.polycyclicStructure
  rewritingSystemClosed : P.rewritingSystem
  confluenceConditionClosed : P.confluenceCondition
  grObnerShirshovBasisClosed : P.grObnerShirshovBasis

def PolycyclicRewritingClosed (P : PolycyclicRewritingPackage) : Prop :=
  P.polycyclicStructure ∧ P.rewritingSystem ∧
  P.confluenceCondition ∧ P.grObnerShirshovBasis

theorem polycyclic_rewriting_closed_from_evidence (P : PolycyclicRewritingPackage)
    (E : PolycyclicRewritingEvidence P) : PolycyclicRewritingClosed P := by
  exact And.intro E.polycyclicStructureClosed
    (And.intro E.rewritingSystemClosed
      (And.intro E.confluenceConditionClosed E.grObnerShirshovBasisClosed))

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse