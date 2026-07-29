import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure DeRhamComplexPackage where
  smoothManifold : Type u
  differentialForms : Type v
  exteriorDerivative : Type w
  hodgeStar : Type x
  integration : Type y
  cohomologyDefined : Prop
  poincareLemma : Prop
  hodgeDecomposition : Prop

def DeRhamClosed (D : DeRhamComplexPackage) : Prop :=
  D.cohomologyDefined ∧ D.poincareLemma ∧ D.hodgeDecomposition

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse
