import GeometriesDifferentiableStructureCanonicalLaneLean.ConnectionTheory

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure IndexTheoremPackage where
  manifold : Type u
  ellipticOperator : Type v
  index : Type w
  analyticIndex : Prop
  topologicalIndex : Prop
  indexTheorem : Prop
  chernCharacter : Prop
  toddClass : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexTheoremClosed : I.indexTheorem
  chernCharacterClosed : I.chernCharacter
  toddClassClosed : I.toddClass

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.indexTheorem ∧ I.chernCharacter ∧ I.toddClass

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.analyticIndexClosed (
    And.intro E.topologicalIndexClosed (
      And.intro E.indexTheoremClosed (
        And.intro E.chernCharacterClosed E.toddClassClosed)))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse