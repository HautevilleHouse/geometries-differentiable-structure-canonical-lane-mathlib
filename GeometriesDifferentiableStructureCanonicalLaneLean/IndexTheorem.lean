import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure IndexTheoremPackage where
  analyticIndex : Prop
  topologicalIndex : Prop
  atiyahSingerTheorem : Prop
  chernCharacter : Prop
  toddCharacter : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  atiyahSingerTheoremClosed : I.atiyahSingerTheorem
  chernCharacterClosed : I.chernCharacter
  toddCharacterClosed : I.toddCharacter

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.atiyahSingerTheorem ∧
  I.chernCharacter ∧ I.toddCharacter

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.analyticIndexClosed
    (And.intro E.topologicalIndexClosed
      (And.intro E.atiyahSingerTheoremClosed
        (And.intro E.chernCharacterClosed E.toddCharacterClosed)))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse