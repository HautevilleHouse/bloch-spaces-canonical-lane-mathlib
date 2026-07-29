import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BlochSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure BlochSpaceFundamentalsPackage where
  mobiusInvariance : Prop
  blochNormNonnegative : Prop
  littleBlochSubspace : Prop
  schwarzPickInequality : Prop

structure BlochSpaceFundamentalsEvidence (P : BlochSpaceFundamentalsPackage) where
  mobiusInvarianceClosed : P.mobiusInvariance
  blochNormNonnegativeClosed : P.blochNormNonnegative
  littleBlochSubspaceClosed : P.littleBlochSubspace
  schwarzPickInequalityClosed : P.schwarzPickInequality

def BlochSpaceFundamentalsClosed (P : BlochSpaceFundamentalsPackage) : Prop :=
  P.mobiusInvariance ∧ P.blochNormNonnegative ∧ P.littleBlochSubspace ∧ P.schwarzPickInequality

theorem bloch_space_fundamentals_closed_from_evidence
    (P : BlochSpaceFundamentalsPackage) (E : BlochSpaceFundamentalsEvidence P) :
    BlochSpaceFundamentalsClosed P := by
  exact And.intro E.mobiusInvarianceClosed
    (And.intro E.blochNormNonnegativeClosed
      (And.intro E.littleBlochSubspaceClosed E.schwarzPickInequalityClosed))

end BlochSpacesCanonicalLaneLean
end HautevilleHouse