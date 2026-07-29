import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlochSpacesCanonicalLaneLean

structure CarlesonEmbeddingPackage {B : BlochSpacePackage} where
  measureOnDisc : Type u
  carlesonCondition : Prop
  embeddingBounded : Prop
  reverseEmbedding : Prop

structure CarlesonEmbeddingEvidence {B : BlochSpacePackage} (C : CarlesonEmbeddingPackage B) where
  carlesonConditionClosed : C.carlesonCondition
  embeddingBoundedClosed : C.embeddingBounded
  reverseEmbeddingClosed : C.reverseEmbedding

def CarlesonEmbeddingClosed {B : BlochSpacePackage} (C : CarlesonEmbeddingPackage B) : Prop :=
  C.carlesonCondition ∧ C.embeddingBounded ∧ C.reverseEmbedding

theorem carleson_embedding_closed_from_evidence {B : BlochSpacePackage} (C : CarlesonEmbeddingPackage B) (E : CarlesonEmbeddingEvidence C) :
    CarlesonEmbeddingClosed C := by
  exact And.intro E.carlesonConditionClosed (And.intro E.embeddingBoundedClosed E.reverseEmbeddingClosed)

end BlochSpacesCanonicalLaneLean
end HautevilleHouse