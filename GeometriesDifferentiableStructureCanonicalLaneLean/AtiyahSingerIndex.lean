import canonicalLaneMathlib.AdmissibleClass
import GeometriesDifferentiableStructureCanonicalLaneLean.ChernWeilTheory

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure AtiyahSingerPackage {P : ConnectionCurvaturePackage} {C : ConnectionCurvatureEvidence P}
    (W : ChernWeilPackage C) where
  ellipticOperator : Type u
  indexDefined : Prop
  topologicalIndexDefined : Prop
  analyticIndexDefined : Prop
  indexTheoremStatement : Prop

structure AtiyahSingerEvidence {P : ConnectionCurvaturePackage}
    {C : ConnectionCurvatureEvidence P} {W : ChernWeilPackage C}
    (I : AtiyahSingerPackage W) where
  ellipticOperatorClosed : ∃ (op : I.ellipticOperator), True
  indexDefinedClosed : I.indexDefined
  topologicalIndexDefinedClosed : I.topologicalIndexDefined
  analyticIndexDefinedClosed : I.analyticIndexDefined
  indexTheoremStatementClosed : I.indexTheoremStatement

def AtiyahSingerClosed {P : ConnectionCurvaturePackage}
    {C : ConnectionCurvatureEvidence P} {W : ChernWeilPackage C}
    (I : AtiyahSingerPackage W) : Prop :=
  I.indexDefined ∧ I.topologicalIndexDefined ∧ I.analyticIndexDefined ∧ I.indexTheoremStatement

theorem atiyah_singer_closed_from_evidence {P : ConnectionCurvaturePackage}
    {C : ConnectionCurvatureEvidence P} {W : ChernWeilPackage C}
    (I : AtiyahSingerPackage W) (E : AtiyahSingerEvidence I) : AtiyahSingerClosed I :=
  And.intro E.indexDefinedClosed
    (And.intro E.topologicalIndexDefinedClosed
      (And.intro E.analyticIndexDefinedClosed E.indexTheoremStatementClosed))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse
