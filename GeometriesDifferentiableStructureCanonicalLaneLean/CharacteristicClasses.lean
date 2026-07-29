import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometriesDifferentiableStructureCanonicalLaneLean

structure CharacteristicClassesPackage where
  chernClasses : Type u
  pontryaginClasses : Type v
  eulerClass : Type w
  chernCharacter : Type x
  toddClass : Type y
  whitneyClasses : Type z
  chernClassesDefined : Prop
  pontryaginClassesDefined : Prop
  eulerClassDefined : Prop
  chernCharacterDefined : Prop
  toddClassDefined : Prop
  whitneyClassesDefined : Prop

structure CharacteristicClassesEvidence (C : CharacteristicClassesPackage) where
  chernClassesDefinedClosed : C.chernClassesDefined
  pontryaginClassesDefinedClosed : C.pontryaginClassesDefined
  eulerClassDefinedClosed : C.eulerClassDefined
  chernCharacterDefinedClosed : C.chernCharacterDefined
  toddClassDefinedClosed : C.toddClassDefined
  whitneyClassesDefinedClosed : C.whitneyClassesDefined

def CharacteristicClassesClosed (C : CharacteristicClassesPackage) : Prop :=
  C.chernClassesDefined ∧ C.pontryaginClassesDefined ∧ C.eulerClassDefined ∧
  C.chernCharacterDefined ∧ C.toddClassDefined ∧ C.whitneyClassesDefined

theorem characteristic_classes_closed_from_evidence (C : CharacteristicClassesPackage)
    (E : CharacteristicClassesEvidence C) : CharacteristicClassesClosed C := by
  exact And.intro E.chernClassesDefinedClosed (And.intro E.pontryaginClassesDefinedClosed
    (And.intro E.eulerClassDefinedClosed (And.intro E.chernCharacterDefinedClosed
      (And.intro E.toddClassDefinedClosed E.whitneyClassesDefinedClosed))))

end GeometriesDifferentiableStructureCanonicalLaneLean
end HautevilleHouse