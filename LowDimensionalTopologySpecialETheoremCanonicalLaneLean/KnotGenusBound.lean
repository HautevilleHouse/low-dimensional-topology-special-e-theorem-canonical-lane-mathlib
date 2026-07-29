import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure KnotGenusBoundPackage where
  knotType : Type u
  genusBound : Nat
  lowerBoundAchieved : Prop
  seifertSurfaceConstructed : Prop
  boundMinimal : Prop

structure KnotGenusBoundEvidence (K : KnotGenusBoundPackage) where
  lowerBoundAchievedClosed : K.lowerBoundAchieved
  seifertSurfaceConstructedClosed : K.seifertSurfaceConstructed
  boundMinimalClosed : K.boundMinimal

def KnotGenusBoundClosed (K : KnotGenusBoundPackage) : Prop :=
  K.lowerBoundAchieved ∧ K.seifertSurfaceConstructed ∧ K.boundMinimal

theorem knot_genus_bound_closed_from_evidence (K : KnotGenusBoundPackage) (E : KnotGenusBoundEvidence K) :
    KnotGenusBoundClosed K := by
  exact And.intro E.lowerBoundAchievedClosed (And.intro E.seifertSurfaceConstructedClosed E.boundMinimalClosed)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse