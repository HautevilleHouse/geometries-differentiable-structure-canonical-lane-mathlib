import GeometriesDifferentiableStructureCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure GeodesicFlowPackage (G : RiemannianCurvaturePackage) where
  tangentBundle : Type u
  exponentialMap : Type v
  jacobiFields : Type w
  geodesicEquation : Prop
  exponentialLaw : Prop
  conjugatePoints : Prop

structure GeodesicFlowEvidence {G : RiemannianCurvaturePackage}
    (F : GeodesicFlowPackage G) where
  geodesicEquationClosed : F.geodesicEquation
  exponentialLawClosed : F.exponentialLaw
  conjugatePointsClosed : F.conjugatePoints

def GeodesicFlowClosed {G : RiemannianCurvaturePackage}
    (F : GeodesicFlowPackage G) : Prop :=
  F.geodesicEquation ∧
  F.exponentialLaw ∧
  F.conjugatePoints

theorem geodesic_flow_closed_from_evidence
    {G : RiemannianCurvaturePackage} (F : GeodesicFlowPackage G)
    (E : GeodesicFlowEvidence F) : GeodesicFlowClosed F := by
  exact And.intro E.geodesicEquationClosed
    (And.intro E.exponentialLawClosed E.conjugatePointsClosed)

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse