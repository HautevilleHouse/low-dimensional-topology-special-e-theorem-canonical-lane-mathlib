import LowDimensionalTopologySpecialETheoremCanonicalLaneLean.HeegaardSplitting

/-!
# Normal Surface Theory Package
-/

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure NormalSurfaceTheoryPackage {P : SpecialEClassificationPackage}
    {H : HeegaardSplittingPackage P} where
  triangulation : Type u
  normalSurfaceType : Type v
  fundamentalSurfaceExists : Prop
  surfaceNormalCoordinates : Prop
  eulerCharacteristicComputed : Prop

structure NormalSurfaceTheoryEvidence {P : SpecialEClassificationPackage}
    {H : HeegaardSplittingPackage P} (N : NormalSurfaceTheoryPackage P H) where
  fundamentalSurfaceExistsClosed : N.fundamentalSurfaceExists
  surfaceNormalCoordinatesClosed : N.surfaceNormalCoordinates
  eulerCharacteristicComputedClosed : N.eulerCharacteristicComputed

def NormalSurfaceTheoryClosed {P : SpecialEClassificationPackage}
    {H : HeegaardSplittingPackage P} (N : NormalSurfaceTheoryPackage P H) : Prop :=
  N.fundamentalSurfaceExists ∧ N.surfaceNormalCoordinates ∧ N.eulerCharacteristicComputed

theorem normal_surface_theory_closed_from_evidence
    {P : SpecialEClassificationPackage} {H : HeegaardSplittingPackage P}
    (N : NormalSurfaceTheoryPackage P H) (E : NormalSurfaceTheoryEvidence N) :
    NormalSurfaceTheoryClosed N := by
  exact And.intro E.fundamentalSurfaceExistsClosed
    (And.intro E.surfaceNormalCoordinatesClosed E.eulerCharacteristicComputedClosed)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse