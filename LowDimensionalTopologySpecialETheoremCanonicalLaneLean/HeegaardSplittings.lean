import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure HeegaardSplittingPackage where
  splittingGenus : Nat
  handlebodyOne : Type u
  handlebodyTwo : Type u
  commonSurface : Type v
  handlebodyOneEmbedding : handlebodyOne → commonSurface
  handlebodyTwoEmbedding : handlebodyTwo → commonSurface
  wedgeSumTrivial : Prop
  splittingGenusBounded : splittingGenus ≤ 5

structure HeegaardSplittingEvidence (H : HeegaardSplittingPackage) where
  wedgeSumTrivialClosed : H.wedgeSumTrivial
  splittingGenusBoundedClosed : H.splittingGenusBounded

def HeegaardSplittingClosed (H : HeegaardSplittingPackage) : Prop :=
  H.wedgeSumTrivial ∧ H.splittingGenusBounded

theorem heegaard_splitting_closed_from_evidence (H : HeegaardSplittingPackage) (E : HeegaardSplittingEvidence H) :
    HeegaardSplittingClosed H := by
  exact And.intro E.wedgeSumTrivialClosed E.splittingGenusBoundedClosed

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse