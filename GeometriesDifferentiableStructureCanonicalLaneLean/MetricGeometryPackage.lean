import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure MetricGeometryPackage where
  riemannianMetric : Type u
  leviCivitaConnection : Type v
  geodesicExistence : Prop
  completenessCondition : Prop
  curvatureBehavior : Prop

structure MetricGeometryEvidence (M : MetricGeometryPackage) where
  geodesicExistenceClosed : M.geodesicExistence
  completenessConditionClosed : M.completenessCondition
  curvatureBehaviorClosed : M.curvatureBehavior

def MetricGeometryClosed (M : MetricGeometryPackage) : Prop :=
  M.geodesicExistence ∧ M.completenessCondition ∧ M.curvatureBehavior

theorem metric_geometry_closed_from_evidence (M : MetricGeometryPackage)
    (E : MetricGeometryEvidence M) : MetricGeometryClosed M := by
  exact And.intro E.geodesicExistenceClosed (And.intro E.completenessConditionClosed
    E.curvatureBehaviorClosed)

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse