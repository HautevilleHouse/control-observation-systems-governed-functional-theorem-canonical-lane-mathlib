import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ObservationEndgamePackage {C : ControlledObservableStructure} (E : ControlObservationEvidence C) where
  finalObservationRecovered : Prop
  controlPolicySynthesized : Prop
  functionalTheoremSatisfied : Prop
  functionalTheoremSatisfiedTerm : functionalTheoremSatisfied
  observationRecoveredTerm : finalObservationRecovered
  controlPolicyTerm : controlPolicySynthesized

def ObservationEndgameClosed {C : ControlledObservableStructure} {E : ControlObservationEvidence C} (P : ObservationEndgamePackage E) : Prop :=
  P.finalObservationRecovered ∧ P.controlPolicySynthesized ∧ P.functionalTheoremSatisfied

theorem observation_endgame_closed {C : ControlledObservableStructure} {E : ControlObservationEvidence C} (P : ObservationEndgamePackage E) :
    ObservationEndgameClosed P := by
  exact And.intro P.observationRecoveredTerm (And.intro P.controlPolicyTerm P.functionalTheoremSatisfiedTerm)

end ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean
end HautevilleHouse