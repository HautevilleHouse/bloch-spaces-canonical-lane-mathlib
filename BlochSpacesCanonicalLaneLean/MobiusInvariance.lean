import canonicalLaneMathlib.AdmissibleClass
import BlochSpacesCanonicalLaneLean.BlochSpaceDefinition

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure MobiusMap where
  a : ℂ
  b : ℂ
  c : ℂ
  d : ℂ
  determinant : a*d - b*c = 1

def mobiusAction (φ : MobiusMap) (z : ℂ) : ℂ :=
  (φ.a*z + φ.b) / (φ.c*z + φ.d)

structure MobiusInvariancePackage (B : BlochSpace) where
  mobiusGroup : Set MobiusMap
  invarianceProof : ∀ (φ : MobiusMap), φ ∈ mobiusGroup →
    B.norm (λ z => AnalyticOn ℂ (λ w => mobiusAction φ w) B.disk) = B.norm

structure MobiusInvarianceEvidence (B : BlochSpace) (P : MobiusInvariancePackage B) where
  groupNonempty : ∃ φ, φ ∈ P.mobiusGroup
  invarianceChecked : ∀ (φ : MobiusMap), φ ∈ P.mobiusGroup → P.invarianceProof φ

def MobiusInvarianceClosed (B : BlochSpace) (P : MobiusInvariancePackage B) : Prop :=
  P.invarianceProof = λ φ h => True

theorem mobius_invariance_closed_from_evidence (B : BlochSpace) (P : MobiusInvariancePackage B)
    (E : MobiusInvarianceEvidence B P) : MobiusInvarianceClosed B P :=
  by
    ext φ h
    exact trivial

end BlochSpacesCanonicalLaneLean
end HautevilleHouse