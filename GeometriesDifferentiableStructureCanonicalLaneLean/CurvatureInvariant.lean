import GeometriesDifferentiableStructureCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure CurvatureInvariantPackage (G : RiemannianCurvaturePackage) where
  sectionalCurvature : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  curvatureOperator : Prop
  parallelCurvature : Prop

structure CurvatureInvariantEvidence {G : RiemannianCurvaturePackage}
    (C : CurvatureInvariantPackage G) where
  sectionalCurvatureClosed : C.sectionalCurvature
  ricciCurvatureClosed : C.ricciCurvature
  scalarCurvatureClosed : C.scalarCurvature
  curvatureOperatorClosed : C.curvatureOperator
  parallelCurvatureClosed : C.parallelCurvature

def CurvatureInvariantClosed {G : RiemannianCurvaturePackage}
    (C : CurvatureInvariantPackage G) : Prop :=
  C.sectionalCurvature ∧ C.ricciCurvature ∧
  C.scalarCurvature ∧ C.curvatureOperator ∧
  C.parallelCurvature

theorem curvature_invariant_closed_from_evidence
    {G : RiemannianCurvaturePackage} (C : CurvatureInvariantPackage G)
    (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.sectionalCurvatureClosed
    (And.intro E.ricciCurvatureClosed
      (And.intro E.scalarCurvatureClosed
        (And.intro E.curvatureOperatorClosed E.parallelCurvatureClosed)))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse