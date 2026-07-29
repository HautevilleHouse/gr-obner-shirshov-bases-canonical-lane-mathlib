import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GrObnerShirshovWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse
