import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure BlochSpace where
  domain : Type
  topology : TopologicalSpace domain
  unitDisk : Prop

structure BlochFunction where
  source : BlochSpace
  analytic : Prop
  blochSeminormFinite : Prop
  blochConstantBound : Prop

structure BlochAdmittedObject where
  blochSpace : BlochSpace
  blochFunction : BlochFunction
  isBloch : Prop
  conclusion : isBloch

def BlochWitnessClosed (O : BlochAdmittedObject) : Prop :=
  O.isBloch

end BlochSpacesCanonicalLaneLean
end HautevilleHouse