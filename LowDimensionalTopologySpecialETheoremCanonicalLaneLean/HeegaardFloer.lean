import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure HeegaardFloerPackage where
  generatorChain : Type
  differential : Type
  homology : Type
  chainComplexDefined : Prop
  differentialSquaresToZero : Prop
  homologyComputed : Prop
  chainComplexDefinedTerm : chainComplexDefined
  differentialSquaresToZeroTerm : differentialSquaresToZero
  homologyComputedTerm : homologyComputed

structure HeegaardFloerEvidence (H : HeegaardFloerPackage) where
  chainComplexClosed : H.chainComplexDefined
  differentialSquaresZeroClosed : H.differentialSquaresToZero
  homologyComputedClosed : H.homologyComputed

def HeegaardFloerClosed (H : HeegaardFloerPackage) : Prop :=
  H.chainComplexDefined ∧ H.differentialSquaresToZero ∧ H.homologyComputed

theorem heegaard_floer_closed_from_evidence
    (H : HeegaardFloerPackage) (E : HeegaardFloerEvidence H) :
    HeegaardFloerClosed H := by
  exact And.intro E.chainComplexClosed
    (And.intro E.differentialSquaresZeroClosed E.homologyComputedClosed)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse
