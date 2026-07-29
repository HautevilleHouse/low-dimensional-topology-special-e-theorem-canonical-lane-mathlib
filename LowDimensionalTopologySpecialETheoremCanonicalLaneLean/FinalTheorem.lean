import LowDimensionalTopologySpecialETheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

def ConstrainedSpecialEClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_special_e_endgame (A : AdmissibleClass) :
    ConstrainedSpecialEClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse