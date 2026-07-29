import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SpecialEOpenBookDecomposition where
  openBook : Type u
  binding : Type v
  pageFibration : Type w
  monodromy : Type x
  fiberGenus : ℕ
  pageGenus : ℕ
  specialEPageDefined : Prop
  monodromyCompatibleWithSpecialE : Prop

structure SpecialEOpenBookEvidence (S : SpecialEOpenBookDecomposition) where
  specialEPageDefinedClosed : S.specialEPageDefined
  monodromyCompatibleClosed : S.monodromyCompatibleWithSpecialE

def SpecialEOpenBookClosed (S : SpecialEOpenBookDecomposition) : Prop :=
  S.specialEPageDefined ∧ S.monodromyCompatibleWithSpecialE

theorem special_e_open_book_closed_from_evidence (S : SpecialEOpenBookDecomposition)
    (E : SpecialEOpenBookEvidence S) : SpecialEOpenBookClosed S :=
  And.intro E.specialEPageDefinedClosed E.monodromyCompatibleClosed

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse