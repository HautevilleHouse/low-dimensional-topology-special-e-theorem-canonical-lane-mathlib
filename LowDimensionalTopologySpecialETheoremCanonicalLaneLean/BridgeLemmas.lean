import LowDimensionalTopologySpecialETheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LowDimTopologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse