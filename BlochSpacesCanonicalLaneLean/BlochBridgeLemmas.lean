import HautevilleHouse.BlochSpacesCanonicalLaneLean.BlochAdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

def BlochWitnessClosed (O : BlochAdmittedObject) : Prop :=
  O.conclusion

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BlochWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BlochSpacesCanonicalLaneLean
end HautevilleHouse