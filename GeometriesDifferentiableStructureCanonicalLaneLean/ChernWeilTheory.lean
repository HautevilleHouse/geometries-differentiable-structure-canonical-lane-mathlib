import canonicalLaneMathlib.AdmissibleClass
import GeometriesDifferentiableStructureCanonicalLaneLean.ConnectionCurvatureForms

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure ChernWeilPackage {P : ConnectionCurvaturePackage} (C : ConnectionCurvatureEvidence P) where
  invariantPolynomial : Type u
  characteristicClass : Type v
  chernWeilHomomorphism : Prop
  chernClassesDefined : Prop
  eulerClassDefined : Prop
  chernClassesGeometric : Prop
  eulerClassGeometric : Prop

structure ChernWeilEvidence {P : ConnectionCurvaturePackage} {C : ConnectionCurvatureEvidence P}
    (W : ChernWeilPackage C) where
  chernWeilHomomorphismClosed : W.chernWeilHomomorphism
  chernClassesDefinedClosed : W.chernClassesDefined
  eulerClassDefinedClosed : W.eulerClassDefined
  chernClassesGeometricClosed : W.chernClassesGeometric
  eulerClassGeometricClosed : W.eulerClassGeometric

def ChernWeilClosed {P : ConnectionCurvaturePackage} {C : ConnectionCurvatureEvidence P}
    (W : ChernWeilPackage C) : Prop :=
  W.chernWeilHomomorphism ∧ W.chernClassesDefined ∧ W.eulerClassDefined ∧
  W.chernClassesGeometric ∧ W.eulerClassGeometric

theorem chern_weil_closed_from_evidence {P : ConnectionCurvaturePackage}
    {C : ConnectionCurvatureEvidence P} (W : ChernWeilPackage C)
    (E : ChernWeilEvidence W) : ChernWeilClosed W :=
  And.intro E.chernWeilHomomorphismClosed
    (And.intro E.chernClassesDefinedClosed
      (And.intro E.eulerClassDefinedClosed
        (And.intro E.chernClassesGeometricClosed E.eulerClassGeometricClosed)))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse
