import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure ArcPresentationPackage where
  braidIndex : Nat
  strandCount : Nat
  arcOverUnder : Prop
  positiveCrossings : Prop
  noTrivialArcs : Prop

structure ArcPresentationEvidence (A : ArcPresentationPackage) where
  arcOverUnderClosed : A.arcOverUnder
  positiveCrossingsClosed : A.positiveCrossings
  noTrivialArcsClosed : A.noTrivialArcs

def ArcPresentationClosed (A : ArcPresentationPackage) : Prop :=
  A.arcOverUnder ∧ A.positiveCrossings ∧ A.noTrivialArcs

theorem arc_presentation_closed_from_evidence (A : ArcPresentationPackage) (E : ArcPresentationEvidence A) :
    ArcPresentationClosed A := by
  exact And.intro E.arcOverUnderClosed (And.intro E.positiveCrossingsClosed E.noTrivialArcsClosed)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse