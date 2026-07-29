import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure ConnectionCurvaturePackage where
  principalBundle : Type u
  baseManifold : Type v
  totalSpace : Type w
  connectionForm : Type x
  curvatureForm : Type y
  smoothConnection : Prop
  curvatureStructuralEquation : Prop
  bianchiIdentity : Prop

structure ConnectionCurvatureEvidence (P : ConnectionCurvaturePackage) where
  smoothConnectionClosed : P.smoothConnection
  curvatureStructuralEquationClosed : P.curvatureStructuralEquation
  bianchiIdentityClosed : P.bianchiIdentity

def ConnectionCurvatureClosed (P : ConnectionCurvaturePackage) : Prop :=
  P.smoothConnection ∧ P.curvatureStructuralEquation ∧ P.bianchiIdentity

theorem connection_curvature_closed_from_evidence (P : ConnectionCurvaturePackage)
    (E : ConnectionCurvatureEvidence P) : ConnectionCurvatureClosed P :=
  And.intro E.smoothConnectionClosed
    (And.intro E.curvatureStructuralEquationClosed E.bianchiIdentityClosed)

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse
