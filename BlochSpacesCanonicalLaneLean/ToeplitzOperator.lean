import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure ToeplitzOperatorPackage where
  space : Type u
  symbol : (unitDisc : Type) → ℂ
  toeplitzOperator : (space → ℂ) → (space → ℂ)
  boundedness : Prop

def ToeplitzOperatorClosed (T : ToeplitzOperatorPackage) : Prop :=
  T.boundedness

theorem toeplitz_operator_closed (T : ToeplitzOperatorPackage) (h : T.boundedness) : ToeplitzOperatorClosed T := h

end BlochSpacesCanonicalLaneLean
end HautevilleHouse