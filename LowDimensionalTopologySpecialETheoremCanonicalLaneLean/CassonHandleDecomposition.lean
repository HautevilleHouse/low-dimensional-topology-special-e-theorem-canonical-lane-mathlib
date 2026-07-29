import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure CassonHandleDecompositionPackage {F : FreedmanTopologyPackage}
    (Fpkg : FreedmanTopologyPackage) where
  towerStructure : Prop
  stageWiseNested : Prop
  limitHandleEmbedded : Prop
  capConstruction : Prop

structure CassonHandleDecompositionEvidence {F : FreedmanTopologyPackage}
    {Fpkg : FreedmanTopologyPackage} (C : CassonHandleDecompositionPackage Fpkg) where
  towerStructureClosed : C.towerStructure
  stageWiseNestedClosed : C.stageWiseNested
  limitHandleEmbeddedClosed : C.limitHandleEmbedded
  capConstructionClosed : C.capConstruction

def CassonHandleDecompositionClosed {F : FreedmanTopologyPackage}
    {Fpkg : FreedmanTopologyPackage} (C : CassonHandleDecompositionPackage Fpkg) : Prop :=
  C.towerStructure ∧ C.stageWiseNested ∧
  C.limitHandleEmbedded ∧ C.capConstruction

theorem casson_handle_decomposition_closed_from_evidence
    {F : FreedmanTopologyPackage} {Fpkg : FreedmanTopologyPackage}
    (C : CassonHandleDecompositionPackage Fpkg)
    (E : CassonHandleDecompositionEvidence C) :
    CassonHandleDecompositionClosed C := by
  exact And.intro E.towerStructureClosed
    (And.intro E.stageWiseNestedClosed
      (And.intro E.limitHandleEmbeddedClosed E.capConstructionClosed))

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse