import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SpecialEAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  closedThreeManifold : Prop
  specialEProperty : Prop
  conclusion : specialEProperty

def SpecialEWitnessClosed (O : SpecialEAdmittedObject) : Prop :=
  O.specialEProperty

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse