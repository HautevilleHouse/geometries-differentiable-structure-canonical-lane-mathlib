import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure AdmissibleClass where
  object : PoincareAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PoincareWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse