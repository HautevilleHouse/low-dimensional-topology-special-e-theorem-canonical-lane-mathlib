import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialETheoremCanonicalLaneLean

structure EndpointRecognitionPackage {F : FreedmanTopologyPackage}
    {C : CassonHandleDecompositionPackage F}
    {Einv : SpecialEInvariantPackage C}
    {S : SurgeryClassificationPackage Einv}
    (Spkg : SurgeryClassificationPackage Einv) where
  targetFourManifold : Type u
  targetTopology : TopologicalSpace targetFourManifold
  simplyConnectedCompact : Prop
  sphereLikeTopologyRecognized : Prop
  specialEVanishesOnTarget : Prop
  endpointMatchesTheorem : Prop

structure EndpointRecognitionEvidence {F : FreedmanTopologyPackage}
    {C : CassonHandleDecompositionPackage F}
    {Einv : SpecialEInvariantPackage C}
    {S : SurgeryClassificationPackage Einv}
    {Spkg : SurgeryClassificationPackage Einv}
    (E : EndpointRecognitionPackage Spkg) where
  simplyConnectedCompactClosed : E.simplyConnectedCompact
  sphereLikeTopologyRecognizedClosed : E.sphereLikeTopologyRecognized
  specialEVanishesOnTargetClosed : E.specialEVanishesOnTarget
  endpointMatchesTheoremClosed : E.endpointMatchesTheorem

def EndpointRecognitionClosed {F : FreedmanTopologyPackage}
    {C : CassonHandleDecompositionPackage F}
    {Einv : SpecialEInvariantPackage C}
    {S : SurgeryClassificationPackage Einv}
    {Spkg : SurgeryClassificationPackage Einv}
    (E : EndpointRecognitionPackage Spkg) : Prop :=
  E.simplyConnectedCompact ∧ E.sphereLikeTopologyRecognized ∧
  E.specialEVanishesOnTarget ∧ E.endpointMatchesTheorem

theorem endpoint_recognition_closed_from_evidence
    {F : FreedmanTopologyPackage} {C : CassonHandleDecompositionPackage F}
    {Einv : SpecialEInvariantPackage C} {S : SurgeryClassificationPackage Einv}
    {Spkg : SurgeryClassificationPackage Einv}
    (E : EndpointRecognitionPackage Spkg)
    (Eevidence : EndpointRecognitionEvidence E) :
    EndpointRecognitionClosed E := by
  exact And.intro Eevidence.simplyConnectedCompactClosed
    (And.intro Eevidence.sphereLikeTopologyRecognizedClosed
      (And.intro Eevidence.specialEVanishesOnTargetClosed Eevidence.endpointMatchesTheoremClosed))

end LowDimensionalTopologySpecialETheoremCanonicalLaneLean
end HautevilleHouse