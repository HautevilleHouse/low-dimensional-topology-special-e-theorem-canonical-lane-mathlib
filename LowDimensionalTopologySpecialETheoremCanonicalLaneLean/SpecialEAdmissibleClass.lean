import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SpecialESpace where
  carrier : Type
  topology : TopologicalSpace carrier
  dimension : Nat
  dimensionThree : dimension = 3

structure SpecialEAdmittedObject where
  space : SpecialESpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  eInvariant : Int
  specialEStatement : Prop
  conclusion : specialEStatement

def SpecialEWitnessClosed (O : SpecialEAdmittedObject) : Prop :=
  O.specialEStatement

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse