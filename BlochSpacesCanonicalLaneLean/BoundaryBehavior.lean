import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure BoundaryBehaviorPackage {B : BlochSpacePackage} where
  radialLimitExists : Prop
  tangentialLimitExists : Prop
  boundaryFunctionDefined : Prop
  fatouProperty : Prop

structure BoundaryBehaviorEvidence {B : BlochSpacePackage} (Bb : BoundaryBehaviorPackage B) where
  radialLimitExistsClosed : Bb.radialLimitExists
  tangentialLimitExistsClosed : Bb.tangentialLimitExists
  boundaryFunctionDefinedClosed : Bb.boundaryFunctionDefined
  fatouPropertyClosed : Bb.fatouProperty

def BoundaryBehaviorClosed {B : BlochSpacePackage} (Bb : BoundaryBehaviorPackage B) : Prop :=
  Bb.radialLimitExists ∧ Bb.tangentialLimitExists ∧ Bb.boundaryFunctionDefined ∧ Bb.fatouProperty

theorem boundary_behavior_closed_from_evidence {B : BlochSpacePackage} (Bb : BoundaryBehaviorPackage B) (E : BoundaryBehaviorEvidence Bb) :
    BoundaryBehaviorClosed Bb := by
  exact And.intro E.radialLimitExistsClosed (And.intro E.tangentialLimitExistsClosed (And.intro E.boundaryFunctionDefinedClosed E.fatouPropertyClosed))

end BlochSpacesCanonicalLaneLean
end HautevilleHouse