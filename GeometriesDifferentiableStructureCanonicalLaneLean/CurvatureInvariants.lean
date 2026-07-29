import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure CurvatureInvariantPackage where
  riemannTensor : Type u
  ricciTensor : Type v
  scalarCurvature : Type w
  sectionalCurvature : Type x
  ricciDecomposition : Prop
  weylTensorVanishing : Prop
  einsteinCondition : Prop
  constantCurvature : Prop

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage) where
  ricciDecompositionClosed : C.ricciDecomposition
  weylTensorVanishingClosed : C.weylTensorVanishing
  einsteinConditionClosed : C.einsteinCondition
  constantCurvatureClosed : C.constantCurvature

def CurvatureInvariantsClosed (C : CurvatureInvariantPackage) : Prop :=
  C.ricciDecomposition ∧ C.weylTensorVanishing ∧ C.einsteinCondition ∧ C.constantCurvature

theorem curvature_invariants_closed_from_evidence (C : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence C) :
    CurvatureInvariantsClosed C := by
  exact And.intro E.ricciDecompositionClosed
    (And.intro E.weylTensorVanishingClosed
      (And.intro E.einsteinConditionClosed E.constantCurvatureClosed))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse