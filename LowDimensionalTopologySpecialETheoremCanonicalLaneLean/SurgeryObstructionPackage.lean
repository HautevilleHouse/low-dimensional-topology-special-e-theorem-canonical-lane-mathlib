import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SurgeryObstructionPackage (A : AdmissibleClass) where
  surgerySequenceDefined : Prop
  obstructionComputed : Prop
  eInvariantVanishes : Prop
  fourManifoldConstructed : Prop

structure SurgeryObstructionEvidence (A : AdmissibleClass) (S : SurgeryObstructionPackage A) where
  surgerySequenceDefinedClosed : S.surgerySequenceDefined
  obstructionComputedClosed : S.obstructionComputed
  eInvariantVanishesClosed : S.eInvariantVanishes
  fourManifoldConstructedClosed : S.fourManifoldConstructed

def SurgeryObstructionClosed (A : AdmissibleClass) (S : SurgeryObstructionPackage A) : Prop :=
  S.surgerySequenceDefined ∧ S.obstructionComputed ∧ S.eInvariantVanishes ∧ S.fourManifoldConstructed

theorem surgery_obstruction_closed_from_evidence (A : AdmissibleClass) (S : SurgeryObstructionPackage A) 
    (E : SurgeryObstructionEvidence A S) : SurgeryObstructionClosed A S :=
  And.intro E.surgerySequenceDefinedClosed (And.intro E.obstructionComputedClosed (And.intro E.eInvariantVanishesClosed E.fourManifoldConstructedClosed))

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse