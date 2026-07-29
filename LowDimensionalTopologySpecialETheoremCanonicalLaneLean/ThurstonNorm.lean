import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure ThurstonNormPackage where
  threeManifold : Type u
  homologyClass : Type v
  normDefined : Prop
  unitBallStructure : Prop
  classDualCone : Prop

structure ThurstonNormEvidence (T : ThurstonNormPackage) where
  normDefinedClosed : T.normDefined
  unitBallStructureClosed : T.unitBallStructure
  classDualConeClosed : T.classDualCone

def ThurstonNormClosed (T : ThurstonNormPackage) : Prop :=
  T.normDefined ∧ T.unitBallStructure ∧ T.classDualCone

theorem thurston_norm_closed_from_evidence (T : ThurstonNormPackage) (E : ThurstonNormEvidence T) :
    ThurstonNormClosed T := by
  exact And.intro E.normDefinedClosed (And.intro E.unitBallStructureClosed E.classDualConeClosed)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse