import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure HeegaardFloerPackage (A : AdmissibleClass) where
  chainComplexDefined : Prop
  homologyComputed : Prop
  spectralSequenceConverges : Prop
  eInvariantDetected : Prop

structure HeegaardFloerEvidence (A : AdmissibleClass) (H : HeegaardFloerPackage A) where
  chainComplexDefinedClosed : H.chainComplexDefined
  homologyComputedClosed : H.homologyComputed
  spectralSequenceConvergesClosed : H.spectralSequenceConverges
  eInvariantDetectedClosed : H.eInvariantDetected

def HeegaardFloerClosed (A : AdmissibleClass) (H : HeegaardFloerPackage A) : Prop :=
  H.chainComplexDefined ∧ H.homologyComputed ∧ H.spectralSequenceConverges ∧ H.eInvariantDetected

theorem heegaard_floer_closed_from_evidence (A : AdmissibleClass) (H : HeegaardFloerPackage A) 
    (E : HeegaardFloerEvidence A H) : HeegaardFloerClosed A H :=
  And.intro E.chainComplexDefinedClosed (And.intro E.homologyComputedClosed (And.intro E.spectralSequenceConvergesClosed E.eInvariantDetectedClosed))

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse