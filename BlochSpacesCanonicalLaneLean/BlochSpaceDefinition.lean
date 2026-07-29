import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure BlochSpacePackage where
  space : Type u
  norm : (space → ℂ) → ℝ
  blochSeminorm : Prop
  banachSpace : Prop
  mobiusInvariance : Prop

structure BlochSpaceEvidence (P : BlochSpacePackage) where
  blochSeminormClosed : P.blochSeminorm
  banachSpaceClosed : P.banachSpace
  mobiusInvarianceClosed : P.mobiusInvariance

def BlochSpaceClosed (P : BlochSpacePackage) : Prop :=
  P.blochSeminorm ∧ P.banachSpace ∧ P.mobiusInvariance

theorem bloch_space_closed_from_evidence (P : BlochSpacePackage) (E : BlochSpaceEvidence P) : BlochSpaceClosed P := by
  exact And.intro E.blochSeminormClosed (And.intro E.banachSpaceClosed E.mobiusInvarianceClosed)

end BlochSpacesCanonicalLaneLean
end HautevilleHouse