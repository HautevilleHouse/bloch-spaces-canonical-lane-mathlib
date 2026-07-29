import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure CompositionOperatorPackage where
  space : Type u
  symbol : (unitDisc : Type) → (unitDisc : Type)
  compositionOperator : (space → ℂ) → (space → ℂ)
  boundedness : Prop
  compactness : Prop

def CompositionOperatorClosed (C : CompositionOperatorPackage) : Prop :=
  C.boundedness ∧ C.compactness

theorem composition_operator_closed (C : CompositionOperatorPackage) (hB : C.boundedness) (hC : C.compactness) : CompositionOperatorClosed C := by
  exact And.intro hB hC

end BlochSpacesCanonicalLaneLean
end HautevilleHouse