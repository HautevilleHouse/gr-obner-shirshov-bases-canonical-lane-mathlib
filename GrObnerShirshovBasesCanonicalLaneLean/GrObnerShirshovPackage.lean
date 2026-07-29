import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure GrObnerShirshovAdmittedObject where
  freeAlgebra : Type
  generators : List freeAlgebra
  relations : List (freeAlgebra × freeAlgebra)
  completionBasis : Type
  monomialOrder : completionBasis → completionBasis → Prop
  inclusionResolved : Prop
  conclusion : inclusionResolved

structure GrObnerShirshovPackage (A : GrObnerShirshovAdmittedObject) where
  overlapRelations : Prop
  completionAlgorithmTerminates : Prop
  basisConstructed : Prop
  normalFormExists : Prop

structure GrObnerShirshovEvidence (A : GrObnerShirshovAdmittedObject) (P : GrObnerShirshovPackage A) where
  overlapRelationsClosed : P.overlapRelations
  completionAlgorithmTerminatesClosed : P.completionAlgorithmTerminates
  basisConstructedClosed : P.basisConstructed
  normalFormExistsClosed : P.normalFormExists

def GrObnerShirshovClosed (A : GrObnerShirshovAdmittedObject) (P : GrObnerShirshovPackage A) : Prop :=
  P.overlapRelations ∧ P.completionAlgorithmTerminates ∧ P.basisConstructed ∧ P.normalFormExists

theorem gr_obner_shirshov_closed_from_evidence
    (A : GrObnerShirshovAdmittedObject) (P : GrObnerShirshovPackage A)
    (E : GrObnerShirshovEvidence A P) : GrObnerShirshovClosed A P := by
  exact And.intro E.overlapRelationsClosed
    (And.intro E.completionAlgorithmTerminatesClosed
      (And.intro E.basisConstructedClosed E.normalFormExistsClosed))

def GrObnerShirshovWitnessClosed (O : GrObnerShirshovAdmittedObject) : Prop :=
  O.inclusionResolved

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse
