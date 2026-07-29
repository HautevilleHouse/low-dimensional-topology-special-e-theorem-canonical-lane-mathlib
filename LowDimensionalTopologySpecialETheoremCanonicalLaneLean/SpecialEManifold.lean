import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SpecialEManifoldPackage where
  baseManifold : Type
  specialEStructure : Type
  degeneracyLocus : Type
  specialEProperty : Prop
  degeneracyLocusFinite : Prop
  specialEPropertyTerm : specialEProperty
  degeneracyLocusFiniteTerm : degeneracyLocusFinite

structure SpecialEManifoldEvidence (S : SpecialEManifoldPackage) where
  specialEPropertyClosed : S.specialEProperty
  degeneracyLocusFiniteClosed : S.degeneracyLocusFinite

def SpecialEManifoldClosed (S : SpecialEManifoldPackage) : Prop :=
  S.specialEProperty ∧ S.degeneracyLocusFinite

theorem special_e_manifold_closed_from_evidence
    (S : SpecialEManifoldPackage) (E : SpecialEManifoldEvidence S) :
    SpecialEManifoldClosed S := by
  exact And.intro E.specialEPropertyClosed E.degeneracyLocusFiniteClosed

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse
