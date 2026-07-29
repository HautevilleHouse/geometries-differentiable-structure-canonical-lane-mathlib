import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure IndexTheoremsPackage where
  ellipticOperator : Type u
  indexDefined : Prop
  atiyahSingerTheorem : Prop
  chernCharacterComputed : Prop
  toddClassComputed : Prop

structure IndexTheoremsEvidence (I : IndexTheoremsPackage) where
  indexDefinedClosed : I.indexDefined
  atiyahSingerTheoremClosed : I.atiyahSingerTheorem
  chernCharacterComputedClosed : I.chernCharacterComputed
  toddClassComputedClosed : I.toddClassComputed

def IndexTheoremsClosed (I : IndexTheoremsPackage) : Prop :=
  I.indexDefined ∧ I.atiyahSingerTheorem ∧ I.chernCharacterComputed ∧ I.toddClassComputed

theorem index_theorems_closed_from_evidence (I : IndexTheoremsPackage)
    (E : IndexTheoremsEvidence I) : IndexTheoremsClosed I := by
  exact And.intro E.indexDefinedClosed (And.intro E.atiyahSingerTheoremClosed
    (And.intro E.chernCharacterComputedClosed E.toddClassComputedClosed))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse