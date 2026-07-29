import GeometriesDifferentiableStructureCanonicalLaneLean.ConnectionTheory

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure HolonomyPackage where
  manifold : Type u
  connection : Type v
  holonomyGroup : Type w
  restrictedHolonomy : Prop
  holonomyRepresentation : Prop
  ambroseSinger : Prop
  deRhamDecomposition : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  restrictedHolonomyClosed : H.restrictedHolonomy
  holonomyRepresentationClosed : H.holonomyRepresentation
  ambroseSingerClosed : H.ambroseSinger
  deRhamDecompositionClosed : H.deRhamDecomposition

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.restrictedHolonomy ∧ H.holonomyRepresentation ∧ H.ambroseSinger ∧ H.deRhamDecomposition

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.restrictedHolonomyClosed (
    And.intro E.holonomyRepresentationClosed (
      And.intro E.ambroseSingerClosed E.deRhamDecompositionClosed))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse