import LowDimensionalTopologySpecialETheoremCanonicalLaneLean.SpecialEClassification

/-!
# Heegaard Splitting Package
-/

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure HeegaardSplittingPackage {P : SpecialEClassificationPackage} where
  handlebodyGenus : Nat
  splittingSurfaceEmbedded : Prop
  compressionBodies : Prop
  gluingMapDefined : Prop
  splittingStabilized : Prop

structure HeegaardSplittingEvidence {P : SpecialEClassificationPackage}
    (H : HeegaardSplittingPackage P) where
  splittingSurfaceEmbeddedClosed : H.splittingSurfaceEmbedded
  compressionBodiesClosed : H.compressionBodies
  gluingMapDefinedClosed : H.gluingMapDefined

def HeegaardSplittingClosed {P : SpecialEClassificationPackage}
    (H : HeegaardSplittingPackage P) : Prop :=
  H.splittingSurfaceEmbedded ∧ H.compressionBodies ∧ H.gluingMapDefined

theorem heegaard_splitting_closed_from_evidence
    {P : SpecialEClassificationPackage} (H : HeegaardSplittingPackage P)
    (E : HeegaardSplittingEvidence H) : HeegaardSplittingClosed H := by
  exact And.intro E.splittingSurfaceEmbeddedClosed
    (And.intro E.compressionBodiesClosed E.gluingMapDefinedClosed)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse