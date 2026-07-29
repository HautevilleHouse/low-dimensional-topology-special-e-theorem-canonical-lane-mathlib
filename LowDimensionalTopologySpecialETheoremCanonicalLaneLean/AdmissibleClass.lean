import LowDimensionalTopologySpecialETheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LowDimTopologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LowDimTopologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse