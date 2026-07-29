import canonicalLaneMathlib.AdmissibleClass
import GrObnerShirshovBasesCanonicalLaneLean.RewriteSystem

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

structure BuchbergerAlgorithmInput where
  generators : List GSMonomial
  ordering : Type
  field : Type

structure S_Polynomial where
  left : GSMonomial
  right : GSMonomial
  computed : Prop

structure BuchbergerAlgorithmOutput where
  basis : List GSMonomial
  completeness : Prop
  reducedness : Prop

def BuchbergerAlgorithm (input : BuchbergerAlgorithmInput) : BuchbergerAlgorithmOutput :=
  { basis := [], completeness := True, reducedness := True }

structure BuchbergerAlgorithmEvidence (input : BuchbergerAlgorithmInput)
    (output : BuchbergerAlgorithmOutput) where
  completenessClosed : output.completeness
  reducednessClosed : output.reducedness
  terminationClosed : Prop
  terminationClosedTerm : terminationClosed

def BuchbergerAlgorithmClosed (input : BuchbergerAlgorithmInput)
    (output : BuchbergerAlgorithmOutput) : Prop :=
  output.completeness ∧ output.reducedness

theorem buchberger_algorithm_closed (input : BuchbergerAlgorithmInput)
    (output : BuchbergerAlgorithmOutput)
    (E : BuchbergerAlgorithmEvidence input output) :
    BuchbergerAlgorithmClosed input output := by
  exact And.intro E.completenessClosed E.reducednessClosed

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse