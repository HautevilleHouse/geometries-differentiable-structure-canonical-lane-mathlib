import GeometriesDifferentiableStructureCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def geometryProjection : Projection GeometryEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem geometry_projection_idempotent (x : GeometryEndgameState) :
    geometryProjection.toFun (geometryProjection.toFun x) = geometryProjection.toFun x := by
  exact geometryProjection.idempotent x

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse