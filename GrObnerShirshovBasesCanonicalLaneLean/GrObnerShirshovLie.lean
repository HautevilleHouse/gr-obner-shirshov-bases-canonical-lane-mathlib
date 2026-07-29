import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

/-!
# Lie Algebra Gröbner–Shirshov Package
-/

structure LieAlgebraPackage where
  lieBracket : Type u → Type u → Type u
  basis : Type v
  structureConstants : Type w
  jacobiIdentity : Prop
  grObnerShirshovBasis : Prop
  normalForm : Prop
  pbwBasis : Prop

structure LieAlgebraEvidence (L : LieAlgebraPackage) where
  jacobiIdentityClosed : L.jacobiIdentity
  grObnerShirshovBasisClosed : L.grObnerShirshovBasis
  normalFormClosed : L.normalForm
  pbwBasisClosed : L.pbwBasis

def LieAlgebraClosed (L : LieAlgebraPackage) : Prop :=
  L.jacobiIdentity ∧ L.grObnerShirshovBasis ∧ L.normalForm ∧ L.pbwBasis

theorem lie_algebra_closed_from_evidence (L : LieAlgebraPackage) (E : LieAlgebraEvidence L) :
    LieAlgebraClosed L := by
  exact And.intro E.jacobiIdentityClosed
    (And.intro E.grObnerShirshovBasisClosed
      (And.intro E.normalFormClosed E.pbwBasisClosed))

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse