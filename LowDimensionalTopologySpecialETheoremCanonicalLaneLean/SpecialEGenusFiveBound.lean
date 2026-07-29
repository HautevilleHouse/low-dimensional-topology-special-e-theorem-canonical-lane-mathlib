import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SpecialEGenusFiveBound where
  threeManifold : Type u
  topologicalType : TopologicalSpace threeManifold
  heegaardGenus : ℕ
  specialEGenusBound : ℕ
  genusFiveCondition : Prop
  heegaardGenusBound : Prop
  genusFiveConditionTerm : genusFiveCondition
  heegaardGenusBoundTerm : heegaardGenusBound

def SpecialEGenusFiveBoundClosed (B : SpecialEGenusFiveBound) : Prop :=
  B.genusFiveCondition ∧ B.heegaardGenusBound

theorem special_e_genus_five_bound_closed (B : SpecialEGenusFiveBound) :
    SpecialEGenusFiveBoundClosed B :=
  And.intro B.genusFiveConditionTerm B.heegaardGenusBoundTerm

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse