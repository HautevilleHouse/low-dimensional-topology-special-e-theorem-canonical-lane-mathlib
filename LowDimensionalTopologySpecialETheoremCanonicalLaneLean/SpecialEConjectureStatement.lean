import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SpecialEConjectureStatement where
  threeManifold : Type u
  topologicalType : TopologicalSpace threeManifold
  homologyThreeSphere : Prop
  specialEGenusFive : Prop
  openBookGenusFive : Prop
  conjectureHolds : Prop
  homologyThreeSphereTerm : homologyThreeSphere
  specialEGenusFiveTerm : specialEGenusFive
  openBookGenusFiveTerm : openBookGenusFive

structure SpecialEConjectureEvidence (C : SpecialEConjectureStatement) where
  homologyThreeSphereClosed : C.homologyThreeSphere
  specialEGenusFiveClosed : C.specialEGenusFive
  openBookGenusFiveClosed : C.openBookGenusFive

def SpecialEConjectureClosed (C : SpecialEConjectureStatement) : Prop :=
  C.homologyThreeSphere ∧ C.specialEGenusFive ∧ C.openBookGenusFive

theorem special_e_conjecture_closed_from_evidence (C : SpecialEConjectureStatement)
    (E : SpecialEConjectureEvidence C) : SpecialEConjectureClosed C :=
  And.intro E.homologyThreeSphereClosed
    (And.intro E.specialEGenusFiveClosed E.openBookGenusFiveClosed)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse