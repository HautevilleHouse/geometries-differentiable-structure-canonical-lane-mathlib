import canonicalLaneMathlib.AdmissibleClass
import GeometriesDifferentiableStructureCanonicalLaneLean.ChernWeilTheory

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure GaussBonnetChernPackage {P : ConnectionCurvaturePackage} {C : ConnectionCurvatureEvidence P}
    (W : ChernWeilPackage C) where
  eulerFormIntegrated : Prop
  gaussBonnetChernTheorem : Prop
  eulerCharacteristicComputed : Prop
  dimensionEvenManifold : Prop

structure GaussBonnetChernEvidence {P : ConnectionCurvaturePackage}
    {C : ConnectionCurvatureEvidence P} {W : ChernWeilPackage C}
    (G : GaussBonnetChernPackage W) where
  eulerFormIntegratedClosed : G.eulerFormIntegrated
  gaussBonnetChernTheoremClosed : G.gaussBonnetChernTheorem
  eulerCharacteristicComputedClosed : G.eulerCharacteristicComputed
  dimensionEvenManifoldClosed : G.dimensionEvenManifold

def GaussBonnetChernClosed {P : ConnectionCurvaturePackage}
    {C : ConnectionCurvatureEvidence P} {W : ChernWeilPackage C}
    (G : GaussBonnetChernPackage W) : Prop :=
  G.eulerFormIntegrated ∧ G.gaussBonnetChernTheorem ∧ G.eulerCharacteristicComputed ∧ G.dimensionEvenManifold

theorem gauss_bonnet_chern_closed_from_evidence {P : ConnectionCurvaturePackage}
    {C : ConnectionCurvatureEvidence P} {W : ChernWeilPackage C}
    (G : GaussBonnetChernPackage W) (E : GaussBonnetChernEvidence G) : GaussBonnetChernClosed G :=
  And.intro E.eulerFormIntegratedClosed
    (And.intro E.gaussBonnetChernTheoremClosed
      (And.intro E.eulerCharacteristicComputedClosed E.dimensionEvenManifoldClosed))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse
