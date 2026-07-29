import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BlochSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.blochConstantProperty

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.blochConstantProperty

end BlochSpacesCanonicalLaneLean
end HautevilleHouse