import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GrObnerShirshovEndgameState where
  object : GrObnerShirshovAdmittedObject

def grObnerShirshovProjection : Projection GrObnerShirshovEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem gr_obner_shirshov_projection_idempotent (x : GrObnerShirshovEndgameState) :
    grObnerShirshovProjection.toFun (grObnerShirshovProjection.toFun x) = grObnerShirshovProjection.toFun x := by
  exact grObnerShirshovProjection.idempotent x

end GrObnerShirshovBasesCanonicalLaneLean
end HautevilleHouse
