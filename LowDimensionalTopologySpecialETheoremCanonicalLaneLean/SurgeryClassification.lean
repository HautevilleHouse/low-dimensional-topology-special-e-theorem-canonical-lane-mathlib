import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure SurgeryClassificationPackage {F : FreedmanTopologyPackage}
    {C : CassonHandleDecompositionPackage F}
    {Einv : SpecialEInvariantPackage C} (Epkg : SpecialEInvariantPackage C) where
  framedLinkConfiguration : Prop
  surgeryRuleApplied : Prop
  handleDecompositionClassification : Prop
  diffeomorphismTypeDetermined : Prop

structure SurgeryClassificationEvidence {F : FreedmanTopologyPackage}
    {C : CassonHandleDecompositionPackage F}
    {Einv : SpecialEInvariantPackage C}
    {Epkg : SpecialEInvariantPackage C}
    (S : SurgeryClassificationPackage Epkg) where
  framedLinkConfigurationClosed : S.framedLinkConfiguration
  surgeryRuleAppliedClosed : S.surgeryRuleApplied
  handleDecompositionClassificationClosed : S.handleDecompositionClassification
  diffeomorphismTypeDeterminedClosed : S.diffeomorphismTypeDetermined

def SurgeryClassificationClosed {F : FreedmanTopologyPackage}
    {C : CassonHandleDecompositionPackage F}
    {Einv : SpecialEInvariantPackage C}
    {Epkg : SpecialEInvariantPackage C}
    (S : SurgeryClassificationPackage Epkg) : Prop :=
  S.framedLinkConfiguration ∧ S.surgeryRuleApplied ∧
  S.handleDecompositionClassification ∧ S.diffeomorphismTypeDetermined

theorem surgery_classification_closed_from_evidence
    {F : FreedmanTopologyPackage} {C : CassonHandleDecompositionPackage F}
    {Einv : SpecialEInvariantPackage C} {Epkg : SpecialEInvariantPackage C}
    (S : SurgeryClassificationPackage Epkg)
    (E : SurgeryClassificationEvidence S) :
    SurgeryClassificationClosed S := by
  exact And.intro E.framedLinkConfigurationClosed
    (And.intro E.surgeryRuleAppliedClosed
      (And.intro E.handleDecompositionClassificationClosed E.diffeomorphismTypeDeterminedClosed))

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse