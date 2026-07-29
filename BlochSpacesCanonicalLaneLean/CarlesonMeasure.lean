import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure CarlesonMeasurePackage where
  space : Type u
  measure : MeasureTheory.Measure (unitDisc : Type)
  carlesonCondition : Prop
  embeddingInequality : Prop

structure CarlesonMeasureEvidence (C : CarlesonMeasurePackage) where
  carlesonConditionClosed : C.carlesonCondition
  embeddingInequalityClosed : C.embeddingInequality

def CarlesonMeasureClosed (C : CarlesonMeasurePackage) : Prop :=
  C.carlesonCondition ∧ C.embeddingInequality

theorem carleson_measure_closed_from_evidence (C : CarlesonMeasurePackage) (E : CarlesonMeasureEvidence C) : CarlesonMeasureClosed C := by
  exact And.intro E.carlesonConditionClosed E.embeddingInequalityClosed

end BlochSpacesCanonicalLaneLean
end HautevilleHouse