import HautevilleHouse.BlochSpacesCanonicalLaneLean.BlochGateLemmas

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

def ConstrainedBlochClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bloch_endgame (A : AdmissibleClass) :
    ConstrainedBlochClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BlochSpacesCanonicalLaneLean
end HautevilleHouse