import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure BasisStructurePackage where
  freeAlgebra : Type u
  monomialOrder : Type v
  composition : Type w
  reductionProcess : Prop
  confluenceProperty : Prop
  leadingTerms : Prop

structure BasisStructureEvidence (B : BasisStructurePackage) where
  reductionProcessClosed : B.reductionProcess
  confluencePropertyClosed : B.confluenceProperty
  leadingTermsClosed : B.leadingTerms

def BasisStructureClosed (B : BasisStructurePackage) : Prop :=
  B.reductionProcess ∧ B.confluenceProperty ∧ B.leadingTerms

theorem basis_structure_closed_from_evidence (B : BasisStructurePackage) (E : BasisStructureEvidence B) :
    BasisStructureClosed B := by
  exact And.intro E.reductionProcessClosed (And.intro E.confluencePropertyClosed E.leadingTermsClosed)

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse