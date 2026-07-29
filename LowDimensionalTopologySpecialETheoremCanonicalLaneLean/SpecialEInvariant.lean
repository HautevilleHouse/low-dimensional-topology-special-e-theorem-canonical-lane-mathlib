import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SpecialEInvariant where
  threeManifold : Type u
  topologicalType : TopologicalSpace threeManifold
  spinCStructure : Type v
  heegaardFloerHomology : Type w
  specialEValue : ℤ
  wellDefined : Prop
  additiveUnderConnectedSum : Prop
  invariantUnderSpecialE : Prop

structure SpecialEInvariantEvidence (I : SpecialEInvariant) where
  wellDefinedClosed : I.wellDefined
  additiveUnderConnectedSumClosed : I.additiveUnderConnectedSum
  invariantUnderSpecialEClosed : I.invariantUnderSpecialE

def SpecialEInvariantClosed (I : SpecialEInvariant) : Prop :=
  I.wellDefined ∧ I.additiveUnderConnectedSum ∧ I.invariantUnderSpecialE

theorem special_e_invariant_closed_from_evidence (I : SpecialEInvariant)
    (E : SpecialEInvariantEvidence I) : SpecialEInvariantClosed I :=
  And.intro E.wellDefinedClosed
    (And.intro E.additiveUnderConnectedSumClosed E.invariantUnderSpecialEClosed)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse