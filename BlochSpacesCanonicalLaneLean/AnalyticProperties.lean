import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure AnalyticPropertiesPackage {B : BlochSpacePackage} (H : B.holomorphicFunctions) where
  automorphismInvariance : Prop
  möbiusInvariance : Prop
  montelProperty : Prop
  growthEstimate : Prop

structure AnalyticPropertiesEvidence {B : BlochSpacePackage} {H : B.holomorphicFunctions} (P : AnalyticPropertiesPackage H) where
  automorphismInvarianceClosed : P.automorphismInvariance
  möbiusInvarianceClosed : P.möbiusInvariance
  montelPropertyClosed : P.montelProperty
  growthEstimateClosed : P.growthEstimate

def AnalyticPropertiesClosed {B : BlochSpacePackage} {H : B.holomorphicFunctions} (P : AnalyticPropertiesPackage H) : Prop :=
  P.automorphismInvariance ∧ P.möbiusInvariance ∧ P.montelProperty ∧ P.growthEstimate

theorem analytic_properties_closed_from_evidence {B : BlochSpacePackage} {H : B.holomorphicFunctions} (P : AnalyticPropertiesPackage H) (E : AnalyticPropertiesEvidence P) :
    AnalyticPropertiesClosed P := by
  exact And.intro E.automorphismInvarianceClosed (And.intro E.möbiusInvarianceClosed (And.intro E.montelPropertyClosed E.growthEstimateClosed))

end BlochSpacesCanonicalLaneLean
end HautevilleHouse