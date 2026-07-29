import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure BlochSpaceObject where
  domain : Type
  topology : TopologicalSpace domain
  isUnitDisc : Prop
  blochFunctions : Type
  blochNorm : Prop
  blochConstantProperty : Prop

structure AdmissibleClass where
  object : BlochSpaceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.blochConstantProperty ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BlochSpacesCanonicalLaneLean
end HautevilleHouse