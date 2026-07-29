import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SpecialEHeegaardFloerPackage where
  heegaardDiagram : Type u
  spinCStructure : Type v
  chainComplex : Type w
  differential : Type x
  homologyGroups : Type y
  specialECorrectionTerm : Prop
  invarianceUnderSpecialE : Prop

structure SpecialEHeegaardFloerEvidence (H : SpecialEHeegaardFloerPackage) where
  specialECorrectionTermClosed : H.specialECorrectionTerm
  invarianceUnderSpecialEClosed : H.invarianceUnderSpecialE

def SpecialEHeegaardFloerClosed (H : SpecialEHeegaardFloerPackage) : Prop :=
  H.specialECorrectionTerm ∧ H.invarianceUnderSpecialE

theorem special_e_heegaard_floer_closed_from_evidence (H : SpecialEHeegaardFloerPackage)
    (E : SpecialEHeegaardFloerEvidence H) : SpecialEHeegaardFloerClosed H :=
  And.intro E.specialECorrectionTermClosed E.invarianceUnderSpecialEClosed

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse