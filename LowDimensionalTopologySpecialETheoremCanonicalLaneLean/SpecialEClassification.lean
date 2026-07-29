import LowDimensionalTopologySpecialETheoremCanonicalLaneLean.BridgeLemmas

/-!
# Special E Classification Package
-/

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SpecialEClassificationPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  threeManifold : Prop
  embeddedSurface : Type v
  surfaceGenus : Nat
  eulerCharacteristicComputed : Prop
  specialESurface : Prop
  specialEStatementClosed : Prop

structure SpecialEClassificationEvidence (P : SpecialEClassificationPackage) where
  threeManifoldClosed : P.threeManifold
  eulerCharacteristicComputedClosed : P.eulerCharacteristicComputed
  specialESurfaceClosed : P.specialESurface
  specialEStatementClosed : P.specialEStatementClosed

def SpecialEClassificationClosed (P : SpecialEClassificationPackage) : Prop :=
  P.threeManifold ∧ P.eulerCharacteristicComputed ∧ P.specialESurface ∧ P.specialEStatementClosed

theorem special_e_classification_closed_from_evidence
    (P : SpecialEClassificationPackage) (E : SpecialEClassificationEvidence P) :
    SpecialEClassificationClosed P := by
  exact And.intro E.threeManifoldClosed
    (And.intro E.eulerCharacteristicComputedClosed
      (And.intro E.specialESurfaceClosed E.specialEStatementClosed))

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse