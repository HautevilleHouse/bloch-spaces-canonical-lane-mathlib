import BlochSpacesCanonicalLaneLean.BlochSpaceObjects

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure BlochConstantBoundPackage where
  blochFunction : BlochFunction
  bound : Prop
  sharpness : Prop

structure BlochConstantBoundEvidence (P : BlochConstantBoundPackage) where
  boundClosed : P.bound
  sharpnessClosed : P.sharpness

def BlochConstantBoundClosed (P : BlochConstantBoundPackage) : Prop :=
  P.bound ∧ P.sharpness

theorem bloch_constant_bound_closed_from_evidence
    (P : BlochConstantBoundPackage) (E : BlochConstantBoundEvidence P) :
    BlochConstantBoundClosed P := by
  exact And.intro E.boundClosed E.sharpnessClosed

end BlochSpacesCanonicalLaneLean
end HautevilleHouse