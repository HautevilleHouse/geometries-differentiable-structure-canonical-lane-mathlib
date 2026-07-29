import canonicalLaneMathlib.AdmissibleClass
import GeometriesDifferentiableStructureCanonicalLaneLean.ConnectionCurvatureForms

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure HolonomyPackage {P : ConnectionCurvaturePackage} (C : ConnectionCurvatureEvidence P) where
  holonomyGroup : Type u
  holonomyAlgebra : Type v
  holonomyReduction : Prop
  ambroseSingerTheorem : Prop
  holonomyDecomposition : Prop

structure HolonomyEvidence {P : ConnectionCurvaturePackage} {C : ConnectionCurvatureEvidence P}
    (H : HolonomyPackage C) where
  holonomyReductionClosed : H.holonomyReduction
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem
  holonomyDecompositionClosed : H.holonomyDecomposition

def HolonomyClosed {P : ConnectionCurvaturePackage} {C : ConnectionCurvatureEvidence P}
    (H : HolonomyPackage C) : Prop :=
  H.holonomyReduction ∧ H.ambroseSingerTheorem ∧ H.holonomyDecomposition

theorem holonomy_closed_from_evidence {P : ConnectionCurvaturePackage}
    {C : ConnectionCurvatureEvidence P} (H : HolonomyPackage C)
    (E : HolonomyEvidence H) : HolonomyClosed H :=
  And.intro E.holonomyReductionClosed
    (And.intro E.ambroseSingerTheoremClosed E.holonomyDecompositionClosed)

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse
