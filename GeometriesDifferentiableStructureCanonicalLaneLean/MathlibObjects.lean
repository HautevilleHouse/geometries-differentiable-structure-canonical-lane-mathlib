import GeometriesDifferentiableStructureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedObject where
  space : Type
  topology : TopologicalSpace space
  differentiableStructure : Prop
  conclusion : Prop

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse