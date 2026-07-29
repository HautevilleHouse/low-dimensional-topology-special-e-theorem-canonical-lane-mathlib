import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure FreedmanTopologyPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  dimensionFourAdjacentManifold : Prop
  hCobordismStructure : Prop
  contractibleSubspace : Prop
  embeddingConditionsMet : Prop

structure FreedmanTopologyEvidence (F : FreedmanTopologyPackage) where
  dimensionFourAdjacentManifoldClosed : F.dimensionFourAdjacentManifold
  hCobordismStructureClosed : F.hCobordismStructure
  contractibleSubspaceClosed : F.contractibleSubspace
  embeddingConditionsMetClosed : F.embeddingConditionsMet

def FreedmanTopologyClosed (F : FreedmanTopologyPackage) : Prop :=
  F.dimensionFourAdjacentManifold ∧ F.hCobordismStructure ∧
  F.contractibleSubspace ∧ F.embeddingConditionsMet

theorem freedman_topology_closed_from_evidence (F : FreedmanTopologyPackage)
    (E : FreedmanTopologyEvidence F) : FreedmanTopologyClosed F := by
  exact And.intro E.dimensionFourAdjacentManifoldClosed
    (And.intro E.hCobordismStructureClosed
      (And.intro E.contractibleSubspaceClosed E.embeddingConditionsMetClosed))

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse