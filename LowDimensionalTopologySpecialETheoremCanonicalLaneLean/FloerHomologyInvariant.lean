import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure FloerHomologyInvariantPackage where
  manifold : Type
  invariant : Type
  invarianceProof : Prop
  invarianceUnderSpecialE : Prop
  invarianceProofTerm : invarianceProof
  invarianceUnderSpecialETerm : invarianceUnderSpecialE

structure FloerHomologyInvariantEvidence (F : FloerHomologyInvariantPackage) where
  invarianceClosed : F.invarianceProof
  invarianceUnderSpecialEClosed : F.invarianceUnderSpecialE

def FloerHomologyInvariantClosed (F : FloerHomologyInvariantPackage) : Prop :=
  F.invarianceProof ∧ F.invarianceUnderSpecialE

theorem floer_homology_invariant_closed_from_evidence
    (F : FloerHomologyInvariantPackage) (E : FloerHomologyInvariantEvidence F) :
    FloerHomologyInvariantClosed F := by
  exact And.intro E.invarianceClosed E.invarianceUnderSpecialEClosed

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse
