import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure ConnectionPackage where
  manifold : Type u
  tangentBundle : Type v
  connectionForm : Type w
  curvatureForm : Type x
  torsionForm : Type y
  leviCivitaCondition : Prop
  metricCompatible : Prop
  torsionFree : Prop
  firstBianchiIdentity : Prop
  secondBianchiIdentity : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  leviCivitaConditionClosed : C.leviCivitaCondition
  metricCompatibleClosed : C.metricCompatible
  torsionFreeClosed : C.torsionFree
  firstBianchiIdentityClosed : C.firstBianchiIdentity
  secondBianchiIdentityClosed : C.secondBianchiIdentity

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.leviCivitaCondition ∧ C.metricCompatible ∧ C.torsionFree ∧
  C.firstBianchiIdentity ∧ C.secondBianchiIdentity

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.leviCivitaConditionClosed
    (And.intro E.metricCompatibleClosed
      (And.intro E.torsionFreeClosed
        (And.intro E.firstBianchiIdentityClosed E.secondBianchiIdentityClosed)))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse