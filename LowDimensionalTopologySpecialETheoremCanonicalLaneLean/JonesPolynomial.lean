import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure JonesPolynomialPackage where
  knotType : Type u
  laurentPolynomial : Type v
  skeinRelationSatisfied : Prop
  mirrorImageProperty : Prop
  linkInvariance : Prop

structure JonesPolynomialEvidence (J : JonesPolynomialPackage) where
  skeinRelationSatisfiedClosed : J.skeinRelationSatisfied
  mirrorImagePropertyClosed : J.mirrorImageProperty
  linkInvarianceClosed : J.linkInvariance

def JonesPolynomialClosed (J : JonesPolynomialPackage) : Prop :=
  J.skeinRelationSatisfied ∧ J.mirrorImageProperty ∧ J.linkInvariance

theorem jones_polynomial_closed_from_evidence (J : JonesPolynomialPackage) (E : JonesPolynomialEvidence J) :
    JonesPolynomialClosed J := by
  exact And.intro E.skeinRelationSatisfiedClosed (And.intro E.mirrorImagePropertyClosed E.linkInvarianceClosed)

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse