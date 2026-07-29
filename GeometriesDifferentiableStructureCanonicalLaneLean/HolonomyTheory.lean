import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure HolonomyTheoryPackage where
  holonomyGroup : Type u
  holonomyAlgebra : Type v
  holonomyDefined : Prop
  curvatureHolonomyRelation : Prop
  reductionTheorem : Prop

structure HolonomyTheoryEvidence (H : HolonomyTheoryPackage) where
  holonomyDefinedClosed : H.holonomyDefined
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation
  reductionTheoremClosed : H.reductionTheorem

def HolonomyTheoryClosed (H : HolonomyTheoryPackage) : Prop :=
  H.holonomyDefined ∧ H.curvatureHolonomyRelation ∧ H.reductionTheorem

theorem holonomy_theory_closed_from_evidence (H : HolonomyTheoryPackage)
    (E : HolonomyTheoryEvidence H) : HolonomyTheoryClosed H := by
  exact And.intro E.holonomyDefinedClosed (And.intro E.curvatureHolonomyRelationClosed
    E.reductionTheoremClosed)

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse