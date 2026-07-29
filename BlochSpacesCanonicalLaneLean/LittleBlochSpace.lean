import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure LittleBlochSpacePackage where
  space : Type u
  norm : (space → ℂ) → ℝ
  littleBlochCondition : Prop
  closedSubspace : Prop

structure LittleBlochSpaceEvidence (L : LittleBlochSpacePackage) where
  littleBlochConditionClosed : L.littleBlochCondition
  closedSubspaceClosed : L.closedSubspace

def LittleBlochSpaceClosed (L : LittleBlochSpacePackage) : Prop :=
  L.littleBlochCondition ∧ L.closedSubspace

theorem little_bloch_space_closed_from_evidence (L : LittleBlochSpacePackage) (E : LittleBlochSpaceEvidence L) : LittleBlochSpaceClosed L := by
  exact And.intro E.littleBlochConditionClosed E.closedSubspaceClosed

end BlochSpacesCanonicalLaneLean
end HautevilleHouse